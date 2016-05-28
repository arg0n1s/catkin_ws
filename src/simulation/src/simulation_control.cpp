#include <ros/ros.h>
#include <geometry_msgs/Twist.h>
#include <iostream>
#include <CarModel.h>
#include <vector>
#include <nav_msgs/Odometry.h>
#include <tf/transform_broadcaster.h>
#include <simulation/ctrl_msg.h>

const double loopRate = 40.0;
geometry_msgs::Twist motion;
simulation::ctrl_msg control;
std::vector<double>simPose;


void motionCommands(const geometry_msgs::Twist::ConstPtr& motionCMD)
{
        motion = *motionCMD;
}

void controlCommands(const simulation::ctrl_msg::ConstPtr& ctrlCMD)
{
        control = *ctrlCMD;
}

int main(int argc, char **argv){

        ros::init(argc, argv, "simulation_control");
        ros::NodeHandle nh;

        CarModel car(0.25, 1.0/loopRate);
        motion = geometry_msgs::Twist();
        control = simulation::ctrl_msg();
        tf::TransformBroadcaster odom_broadcaster;
        tf::TransformBroadcaster map_broadcaster;
        tf::TransformBroadcaster laser_broadcaster;

        ros::Subscriber motionControl = nh.subscribe<geometry_msgs::Twist>("cmd_vel", 10, motionCommands);
        ros::Subscriber steeringControl = nh.subscribe<simulation::ctrl_msg>("robot_control", 10, controlCommands);
        ros::Publisher odomPub = nh.advertise<nav_msgs::Odometry>("odom", 10);

        ros::Time currentTime = ros::Time::now();
        // Loop starts here:
        ros::Rate loop_rate(loopRate);
        while(ros::ok()) {
                currentTime = ros::Time::now();
                simPose = car.getUpdate(control.steering, control.speed);
                geometry_msgs::Quaternion odom_quat = tf::createQuaternionMsgFromYaw(simPose[2]);
                geometry_msgs::Quaternion map_quat =tf::createQuaternionMsgFromYaw(0.0);

                // first, we'll publish the transform over tf
                geometry_msgs::TransformStamped odom_trans;
                odom_trans.header.stamp = currentTime;
                odom_trans.header.frame_id = "odom";
                odom_trans.child_frame_id = "base_footprint";

                odom_trans.transform.translation.x = simPose[1];
                odom_trans.transform.translation.y = -simPose[0];
                odom_trans.transform.translation.z = 0.0;
                odom_trans.transform.rotation = odom_quat;
                // send the transform
                odom_broadcaster.sendTransform(odom_trans);

                // next, we'll publish the odometry message over ROS
                nav_msgs::Odometry odom;
                odom.header.stamp = currentTime;
                odom.header.frame_id = "odom";
                // set the position
                odom.pose.pose.position.x = simPose[1];
                odom.pose.pose.position.y = -simPose[0];
                odom.pose.pose.position.z = 0.0;
                odom.pose.pose.orientation = odom_quat;
                // set the velocity
                odom.child_frame_id = "base_footprint";
                odom.twist.twist.linear.x = motion.linear.x*std::cos(simPose[2]);
                odom.twist.twist.linear.y = motion.linear.x*std::sin(simPose[2]);
                // This doesn't make any sense when using steering commands as input.
                // If this becomes relevant at any point, it should be calculated in the
                // simulation.
                odom.twist.twist.angular.z = motion.angular.z;

                // publish the message
                odomPub.publish(odom);
                ros::spinOnce();
                loop_rate.sleep();
        }

        ros::spin();
}
