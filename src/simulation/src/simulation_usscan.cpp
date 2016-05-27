#include <ros/ros.h>
#include <ros/package.h>
#include <geometry_msgs/TransformStamped.h>
#include <nav_msgs/MapMetaData.h>
#include <iostream>
#include <tf/transform_listener.h>
#include <Raycaster.h>
#include <string>
#include <stdexcept>
#include <sensor_msgs/Range.h>

const double loopRate = 40.0;
nav_msgs::MapMetaData mapInfo;

void callMapMetaData(const nav_msgs::MapMetaData::ConstPtr& mapData)
{
        mapInfo = *mapData;
}

int main(int argc, char **argv){

        ros::init(argc, argv, "simulation_usscan");
        ros::NodeHandle nh;

        ros::Subscriber mapMetaData = nh.subscribe<nav_msgs::MapMetaData>("map_metadata", 10, callMapMetaData);
        ros::Publisher front_us_range = nh.advertise<sensor_msgs::Range>("front_us_range", 10);
        ros::Publisher left_us_range = nh.advertise<sensor_msgs::Range>("left_us_range", 10);
        ros::Publisher right_us_range = nh.advertise<sensor_msgs::Range>("right_us_range", 10);


        std::string imagePath = ros::package::getPath("simulation") + "/data/map/map.pgm";
        cv::Mat map = cv::imread(imagePath,1);
        rc::Raycaster rc_ussensor = rc::Raycaster(map, 0.05, 60.0, 45.0, 0.5);
        sensor_msgs::Range front_range, left_range, right_range;
        tf::TransformListener listener;
        geometry_msgs::Pose ussensorPosition;
        rc::vec2i_ptr gridPose;
        double roll, pitch, yaw;
        tf::Quaternion q;
        ros::Time currentTime = ros::Time::now();

        // Loop starts here:
        ros::Rate loop_rate(loopRate);
        while(ros::ok()) {
                currentTime = ros::Time::now();

                front_range.header.stamp = currentTime;
                front_range.header.frame_id = "front_sensor";
                //front_range.range = 0.5;
                front_range.radiation_type = 0;
                front_range.field_of_view = rc_ussensor.degToRad(45.0);
                front_range.min_range = 0.00;
                front_range.max_range = 2.7;

                left_range.header.stamp = currentTime;
                left_range.header.frame_id = "left_sensor";
                //left_range.range = 0.5;
                left_range.radiation_type = 0;
                left_range.field_of_view = rc_ussensor.degToRad(45.0);
                left_range.min_range = 0.0;
                left_range.max_range = 2.7;

                right_range.header.stamp = currentTime;
                right_range.header.frame_id = "right_sensor";
                //right_range.range = 0.5;
                right_range.radiation_type = 0;
                right_range.field_of_view = rc_ussensor.degToRad(45.0);
                right_range.min_range = 0.00;
                right_range.max_range = 2.7;

                try{
                        tf::StampedTransform stf;
                        listener.lookupTransform("map", "front_sensor", ros::Time(0), stf);
                        tf::Stamped<tf::Pose> tmp(stf, stf.stamp_, "map");
                        geometry_msgs::PoseStamped tmp2;
                        tf::poseStampedTFToMsg(tmp,tmp2);
                        ussensorPosition = tmp2.pose;

                        unsigned int grid_x = (unsigned int)((ussensorPosition.position.x - mapInfo.origin.position.x) / mapInfo.resolution);
                        unsigned int grid_y = (unsigned int)((-ussensorPosition.position.y - mapInfo.origin.position.y) / mapInfo.resolution);

                        gridPose = std::make_shared<cv::Vec2i>(cv::Vec2i(grid_x, grid_y));
                        yaw = 0;
                        try{
                                tf::quaternionMsgToTF(ussensorPosition.orientation, q);
                                q = q.normalize();
                                tf::Matrix3x3(q).getRPY(roll, pitch, yaw);

                                if(!isnan(yaw)) {
                                        yaw = rc_ussensor.radToDeg(yaw);
                                        front_range.range = rc_ussensor.getUsRangeInfo(gridPose, yaw);
                                }

                        }catch(std::exception ex) {
                                ROS_ERROR("%s", ex.what());
                        }

                }catch(tf::TransformException ex) {
                        ROS_ERROR("%s", ex.what());
                }
                try{
                        tf::StampedTransform stf;
                        listener.lookupTransform("map", "left_sensor", ros::Time(0), stf);
                        tf::Stamped<tf::Pose> tmp(stf, stf.stamp_, "map");
                        geometry_msgs::PoseStamped tmp2;
                        tf::poseStampedTFToMsg(tmp,tmp2);
                        ussensorPosition = tmp2.pose;

                        unsigned int grid_x = (unsigned int)((ussensorPosition.position.x - mapInfo.origin.position.x) / mapInfo.resolution);
                        unsigned int grid_y = (unsigned int)((-ussensorPosition.position.y - mapInfo.origin.position.y) / mapInfo.resolution);

                        gridPose = std::make_shared<cv::Vec2i>(cv::Vec2i(grid_x, grid_y));
                        yaw = 0;
                        try{
                                tf::quaternionMsgToTF(ussensorPosition.orientation, q);
                                q = q.normalize();
                                tf::Matrix3x3(q).getRPY(roll, pitch, yaw);

                                if(!isnan(yaw)) {
                                        yaw = rc_ussensor.radToDeg(yaw);
                                        left_range.range = rc_ussensor.getUsRangeInfo(gridPose, yaw);
                                }

                        }catch(std::exception ex) {
                                ROS_ERROR("%s", ex.what());
                        }

                }catch(tf::TransformException ex) {
                        ROS_ERROR("%s", ex.what());
                }
                try{
                        tf::StampedTransform stf;
                        listener.lookupTransform("map", "right_sensor", ros::Time(0), stf);
                        tf::Stamped<tf::Pose> tmp(stf, stf.stamp_, "map");
                        geometry_msgs::PoseStamped tmp2;
                        tf::poseStampedTFToMsg(tmp,tmp2);
                        ussensorPosition = tmp2.pose;

                        unsigned int grid_x = (unsigned int)((ussensorPosition.position.x - mapInfo.origin.position.x) / mapInfo.resolution);
                        unsigned int grid_y = (unsigned int)((-ussensorPosition.position.y - mapInfo.origin.position.y) / mapInfo.resolution);

                        gridPose = std::make_shared<cv::Vec2i>(cv::Vec2i(grid_x, grid_y));
                        yaw = 0;
                        try{
                                tf::quaternionMsgToTF(ussensorPosition.orientation, q);
                                q = q.normalize();
                                tf::Matrix3x3(q).getRPY(roll, pitch, yaw);

                                if(!isnan(yaw)) {
                                        yaw = rc_ussensor.radToDeg(yaw);
                                        right_range.range = rc_ussensor.getUsRangeInfo(gridPose, yaw);
                                }

                        }catch(std::exception ex) {
                                ROS_ERROR("%s", ex.what());
                        }

                }catch(tf::TransformException ex) {
                        ROS_ERROR("%s", ex.what());
                }



                front_us_range.publish(front_range);
                right_us_range.publish(right_range);
                left_us_range.publish(left_range);

                ros::spinOnce();
                loop_rate.sleep();
        }

        ros::spin();
}
