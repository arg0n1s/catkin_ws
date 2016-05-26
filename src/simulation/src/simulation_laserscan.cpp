#include <ros/ros.h>
#include <ros/package.h>
#include <geometry_msgs/TransformStamped.h>
#include <nav_msgs/MapMetaData.h>
#include <iostream>
#include <sensor_msgs/LaserScan.h>
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

    ros::init(argc, argv, "simulation_laserscan");
    ros::NodeHandle nh;

    ros::Publisher scanPub = nh.advertise<sensor_msgs::LaserScan>("scan", 10);
    ros::Subscriber mapMetaData = nh.subscribe<nav_msgs::MapMetaData>("map_metadata", 10, callMapMetaData);
    ros::Publisher front_us_range = nh.advertise<sensor_msgs::Range>("front_us_range", 10);
    ros::Publisher left_us_range = nh.advertise<sensor_msgs::Range>("left_us_range", 10);
    ros::Publisher right_us_range = nh.advertise<sensor_msgs::Range>("right_us_range", 10);

    ros::Time currentTime = ros::Time::now();
    sensor_msgs::LaserScan scan;
    std::string imagePath = ros::package::getPath("simulation") + "/data/map/map.pgm";
    cv::Mat map = cv::imread(imagePath,1);
    Raycaster rc_laser(map, 0.05, 120.0,
    		90.0, 0.5);
    //Raycaster rc_us(map, 0.05, 60.0,
        //45.0, 0.5);
    tf::TransformListener listener;
    geometry_msgs::Pose laserPosition;
    cv::Vec2i gridPose;
    double roll, pitch, yaw;
    std::pair<double,double> minMax;
    tf::Quaternion q;

    // Loop starts here:
    ros::Rate loop_rate(loopRate);
    while(ros::ok()) {
      currentTime = ros::Time::now();
      scan.header.stamp = currentTime;
      scan.header.frame_id = "scan";
      scan.angle_increment = rc_laser.degToRad(0.5);
      scan.range_min = 0.0;
      scan.range_max = 5.8;

      try{
        tf::StampedTransform stf;
        listener.lookupTransform("map", "scan", ros::Time(0), stf);
        tf::Stamped<tf::Pose> tmp(stf, stf.stamp_, "map");
        geometry_msgs::PoseStamped tmp2;
        tf::poseStampedTFToMsg(tmp,tmp2);
        laserPosition = tmp2.pose;

        unsigned int grid_x = (unsigned int)((laserPosition.position.x - mapInfo.origin.position.x) / mapInfo.resolution);
        unsigned int grid_y = (unsigned int)((-laserPosition.position.y - mapInfo.origin.position.y) / mapInfo.resolution);

        gridPose = cv::Vec2i(grid_x, grid_y);
        yaw = 0;
        try{
          tf::quaternionMsgToTF(laserPosition.orientation, q);
          q = q.normalize();
          tf::Matrix3x3(q).getRPY(roll, pitch, yaw);

          if(!isnan(yaw)){
            yaw = rc_laser.radToDeg(yaw);
            scan.ranges = rc_laser.getRangeInfo(gridPose, yaw);
            minMax = rc_laser.angleMinMax(0);
            scan.angle_min = rc_laser.degToRad(minMax.first);
            scan.angle_max = rc_laser.degToRad(minMax.second);
          }

        }catch(std::exception ex){
          ROS_ERROR("%s", ex.what());
        }

      }catch(tf::TransformException ex){
        ROS_ERROR("%s", ex.what());
      }

      sensor_msgs::Range front_range;
      front_range.header.stamp = currentTime;
      front_range.header.frame_id = "front_sensor";
      front_range.range = 0.5;
      front_range.radiation_type = 0;
      front_range.field_of_view = 0.76;
      front_range.min_range = 0.00;
      front_range.max_range = 2.7;

      sensor_msgs::Range left_range;
      left_range.header.stamp = currentTime;
      left_range.header.frame_id = "left_sensor";
      left_range.range = 0.5;
      left_range.radiation_type = 0;
      left_range.field_of_view = 0.76;
      left_range.min_range = 0.0;
      left_range.max_range = 2.7;

      sensor_msgs::Range right_range;
      right_range.header.stamp = currentTime;
      right_range.header.frame_id = "right_sensor";
      right_range.range = 0.5;
      right_range.radiation_type = 0;
      right_range.field_of_view = 0.76;
      right_range.min_range = 0.00;
      right_range.max_range = 2.7;

      front_us_range.publish(front_range);
      right_us_range.publish(right_range);
      left_us_range.publish(left_range);

      scanPub.publish(scan);
      ros::spinOnce();
      loop_rate.sleep();
    }

    ros::spin();
}
