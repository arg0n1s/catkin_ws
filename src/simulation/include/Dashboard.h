#ifndef DASHBOARD_H
#define DASHBOARD_H

#include <QMainWindow>
#include <ros/ros.h>
#include <geometry_msgs/Twist.h>
#include <simulation/ctrl_msg.h>

typedef geometry_msgs::Twist twist_msg;
typedef simulation::ctrl_msg control_msg;

namespace Ui {
class Dashboard;
}

class Dashboard : public QMainWindow
{
    Q_OBJECT

public:
    explicit Dashboard(ros::NodeHandle* nh, QWidget *parent = 0);
    ~Dashboard();

private:
    Ui::Dashboard *ui;
    ros::NodeHandle* nh;
    control_msg ctrl_msg;
    ros::Publisher commands;
private slots:
    void valueChangedSpeed(int value);
    void valueChangedSteering(int value);
    void maxSpeedClicked();
    void minSpeedClicked();
    void zeroSpeedClicked();
    void maxSteeringClicked();
    void minSteeringClicked();
    void centerSteeringClicked();
};

#endif // DASHBOARD_H
