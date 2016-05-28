#include <ros/ros.h>
#include <QApplication>
#include <Dashboard.h>

const double loopRate = 50.0;

int main(int argc, char **argv){

        ros::init(argc, argv, "simulation_dashboard");
        ros::NodeHandle nh;
        QApplication a(argc, argv);
        Dashboard w(&nh);
        w.show();

        //ros::Time currentTime = ros::Time::now();
        // Loop starts here:
        //ros::Rate loop_rate(loopRate);
        //while(ros::ok()) {
                //w.update();
                //a.applicationState().WindowState;
                //ros::spinOnce();
                //loop_rate.sleep();
        //}

        //ros::spin();

        return a.exec();
}
