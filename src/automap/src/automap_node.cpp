#include <ros/ros.h>
#include <PathtransformPlanner.h>
#include <ExplorationPlanner.h>
#include <nav_msgs/MapMetaData.h>
#include <nav_msgs/OccupancyGrid.h>
#include <geometry_msgs/Pose.h>
#include <image_transport/image_transport.h>
#include <cv_bridge/cv_bridge.h>
#include <tf/transform_listener.h>
#include <vector>
#include <string>
#include <move_base_msgs/MoveBaseAction.h>
#include <actionlib/client/simple_action_client.h>

typedef actionlib::SimpleActionClient<move_base_msgs::MoveBaseAction> MoveBaseClient;

void mapMetaCallback(const nav_msgs::MapMetaData::ConstPtr& metaMsg, nav_msgs::MapMetaData *meta){
        *meta = *metaMsg;
}
void mapCallback(const nav_msgs::OccupancyGrid::ConstPtr& mapMsg, cv::Mat *map){
        int width = mapMsg->info.width;
        int height = mapMsg->info.height;
        *map = cv::Mat(width,height,CV_8UC1);
        if(mapMsg->data.size()>0) {
                for(int i = 0; i<height; i++) {
                        for(int j = 0; j<width; j++) {
                                int value = mapMsg->data[i*width+j];
                                int col = 0;
                                if(value==0) {
                                        col = 255;
                                }else if(value==100) {
                                        col = 0;
                                }else{
                                        col = 205;
                                }
                                map->at<uchar>(height-(i+1), j) = col;
                        }
                }
        }

}

void setGridPosition(geometry_msgs::Pose& laser, nav_msgs::MapMetaData& mapInfo, cv::Point * gridPose){
        unsigned int grid_x = (unsigned int)((laser.position.x - mapInfo.origin.position.x) / mapInfo.resolution);
        unsigned int grid_y = (unsigned int)((-laser.position.y - mapInfo.origin.position.y) / mapInfo.resolution);
        gridPose->x = grid_x;
        gridPose->y = grid_y;
}

void getPositionInfo(const std::string& base_frame, const std::string& target_frame, const tf::TransformListener& listener, geometry_msgs::Pose * position, std::vector<double> * rpy){
        bool transformReady = false;
        tf::StampedTransform stf;
        tf::Stamped<tf::Pose> tmp;
        geometry_msgs::PoseStamped tmp2;
        tf::Quaternion q;

        try{
                transformReady = listener.waitForTransform (base_frame, target_frame, ros::Time(0), ros::Duration(0.01));

        }
        catch (tf::TransformException ex) {
                ROS_ERROR("%s",ex.what());

        }

        if(transformReady) {
                try{
                        listener.lookupTransform(base_frame, target_frame, ros::Time(0), stf);

                }
                catch (tf::TransformException ex) {
                        ROS_ERROR("%s",ex.what());

                }
                tmp = tf::Stamped<tf::Pose>(stf, stf.stamp_, base_frame);
                tf::poseStampedTFToMsg(tmp,tmp2);
                *position = tmp2.pose;

                try{
                        tf::quaternionMsgToTF(tmp2.pose.orientation, q);
                        tf::Matrix3x3(q).getRPY((*rpy)[0], (*rpy)[1], (*rpy)[2]);
                }catch(std::exception ex) {
                        //ROS_ERROR("%s", ex.what());
                }

        }
}

void sendGoal(nav_msgs::Path& p, MoveBaseClient& ac)
{
        move_base_msgs::MoveBaseGoal goal;
        goal.target_pose =p.poses[p.poses.size()-1];

        ROS_INFO("Sending goal for x:%lf / y:%lf",goal.target_pose.pose.position.x,goal.target_pose.pose.position.y);
        ac.sendGoal(goal);
        ac.waitForResult();
}

int main(int argc, char **argv){

        ros::init(argc, argv, "automap");
        ros::NodeHandle nh;

        nav_msgs::MapMetaData mapMetaData;
        cv::Mat map;
        sensor_msgs::ImagePtr edgeImageMsg;

        MoveBaseClient ac("move_base", true);
        while(!ac.waitForServer(ros::Duration(5.0)) && ros::ok())
        {
                ROS_INFO("Waiting for the move_base action server to come up...");
        }

        tf::TransformListener listener;
        geometry_msgs::Pose position;
        std::vector<double> rpy(3, 0.0);
        cv::Point gridPose;

        ros::Subscriber mapMetaSub = nh.subscribe<nav_msgs::MapMetaData>("map_metadata", 10, boost::bind(mapMetaCallback, _1, &mapMetaData));
        ros::Subscriber mapSub = nh.subscribe<nav_msgs::OccupancyGrid>("map", 10, boost::bind(mapCallback, _1, &map));
        ros::Publisher pathPub = nh.advertise<nav_msgs::Path>("pathtransformPlanner/path", 10);

        image_transport::ImageTransport it(nh);
        image_transport::Publisher edgePub = it.advertise("floatingEdges", 1);

        //wait for map - server
        ros::Duration d = ros::Duration(5, 0);
        ros::spinOnce();
        while(mapMetaData.resolution == 0 && ros::ok()){
          ROS_INFO("Waiting for the map server to come up...");
          d.sleep();
          ros::spinOnce();
        }

        PathtransformPlanner pPlanner(0.25, 0.4, mapMetaData);
        ExplorationPlanner ePlanner(&pPlanner);

        bool finished = false;
        // Loop starts here:
        ros::Rate loop_rate(1);
        while(ros::ok() && !finished) {
                if(map.cols==0 && map.rows==0) {
                        ROS_INFO("Waiting for the map server to come up");
                }else{
                        //Get Position Information...
                        getPositionInfo("map", "base_footprint", listener, &position, &rpy);
                        setGridPosition(position, mapMetaData, &gridPose);
                        //Feed pathtransformPlanner...
                        try{
                                ROS_INFO("Feeding PathtransformPlanner...");
                                pPlanner.updateTransformMatrices(map, gridPose);
                        }catch(std::exception& e) {
                                std::cout<<e.what()<<std::endl;
                        }

                        bool w = ePlanner.findBestPlanSimple(map, gridPose, rpy[2]);


                        if(w){
                          ROS_INFO("Best next Plan found!");
                          std_msgs::Header genericHeader;
                          genericHeader.stamp = ros::Time::now();
                          genericHeader.frame_id = "map";
                          ROS_INFO("Sending Plan..");

                          // send map with valid detected Edges
                          cv::Mat out = ePlanner.drawFrontiers();
                          edgeImageMsg = cv_bridge::CvImage(std_msgs::Header(), "bgr8", out).toImageMsg();
                          edgePub.publish(edgeImageMsg);
                          nav_msgs::Path frontierPath = ePlanner.getBestPlan(genericHeader);
                          pathPub.publish(frontierPath);
                          ros::spinOnce();
                          ROS_INFO("Sending Goal..");
                          sendGoal(frontierPath, ac);
                        }else{
                          ROS_INFO("Map exploration finished, aborting loop...");
                          finished = true;
                          
                        }
                        // resend map with valid detected Edges
                        cv::Mat out = ePlanner.drawFrontiers();
                        edgeImageMsg = cv_bridge::CvImage(std_msgs::Header(), "bgr8", out).toImageMsg();
                        edgePub.publish(edgeImageMsg);

                }

                ros::spinOnce();
                loop_rate.sleep();
        }

        ros::spin();
}
