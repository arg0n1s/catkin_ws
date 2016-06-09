#include <ros/ros.h>
#include <FloatingEdges.h>

int main(int argc, char **argv){

        ros::init(argc, argv, "automap");
        ros::NodeHandle nh;

        // Loop starts here:
        ros::Rate loop_rate(30);
        while(ros::ok()) {

                ros::spinOnce();
                loop_rate.sleep();
        }

        ros::spin();
}
