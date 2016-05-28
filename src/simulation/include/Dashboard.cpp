#include "Dashboard.h"
#include "../../../build/simulation/ui_Dashboard.h"

Dashboard::Dashboard(ros::NodeHandle* nh, QWidget *parent) :
    QMainWindow(parent), ui(new Ui::Dashboard), nh(nh)
{
    ui->setupUi(this);
    ctrl_msg = control_msg();
    commands = nh->advertise<simulation::ctrl_msg>("robot_control", 50);

    connect(ui->speedSlider, SIGNAL(valueChanged(int)), this, SLOT(valueChangedSpeed(int)));
    connect(ui->steeringSlider, SIGNAL(valueChanged(int)), this, SLOT(valueChangedSteering(int)));
    connect(ui->maxSpeed, SIGNAL(clicked()), this, SLOT(maxSpeedClicked()));
    connect(ui->minSpeed, SIGNAL(clicked()), this, SLOT(minSpeedClicked()));
    connect(ui->zeroSpeed, SIGNAL(clicked()), this, SLOT(zeroSpeedClicked()));
    connect(ui->maxSteering, SIGNAL(clicked()), this, SLOT(maxSteeringClicked()));
    connect(ui->minSteering, SIGNAL(clicked()), this, SLOT(minSteeringClicked()));
    connect(ui->centerSteering, SIGNAL(clicked()), this, SLOT(centerSteeringClicked()));
}

Dashboard::~Dashboard()
{
    delete ui;
}

void Dashboard::valueChangedSpeed(int value){
    ctrl_msg.header.stamp = ros::Time::now();
    ctrl_msg.speed=value;
    commands.publish(ctrl_msg);
    ros::spinOnce();
}

void Dashboard::valueChangedSteering(int value){
    ctrl_msg.header.stamp = ros::Time::now();
    ctrl_msg.steering=value;
    commands.publish(ctrl_msg);
    ros::spinOnce();
}

void Dashboard::maxSpeedClicked(){
    ctrl_msg.header.stamp = ros::Time::now();
    ui->speedSlider->setValue(10);
    ctrl_msg.speed=10;
    commands.publish(ctrl_msg);
    ros::spinOnce();
}

void Dashboard::minSpeedClicked(){
    ctrl_msg.header.stamp = ros::Time::now();
    ui->speedSlider->setValue(-10);
    ctrl_msg.speed=-10;
    commands.publish(ctrl_msg);
    ros::spinOnce();
}

void Dashboard::zeroSpeedClicked(){
    ctrl_msg.header.stamp = ros::Time::now();
    ui->speedSlider->setValue(0);
    ctrl_msg.speed=0;
    commands.publish(ctrl_msg);
    ros::spinOnce();
}

void Dashboard::maxSteeringClicked(){
    ctrl_msg.header.stamp = ros::Time::now();
    ui->steeringSlider->setValue(50);
    ctrl_msg.steering=50;
    commands.publish(ctrl_msg);
    ros::spinOnce();
}

void Dashboard::minSteeringClicked(){
    ctrl_msg.header.stamp = ros::Time::now();
    ui->steeringSlider->setValue(-50);
    ctrl_msg.steering=-50;
    commands.publish(ctrl_msg);
    ros::spinOnce();
}

void Dashboard::centerSteeringClicked(){
    ctrl_msg.header.stamp = ros::Time::now();
    ui->steeringSlider->setValue(8);
    ctrl_msg.steering=8;
    commands.publish(ctrl_msg);
    ros::spinOnce();
}
