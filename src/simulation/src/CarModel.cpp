/*
 * CarModel.cpp
 *
 *  Created on: 11.05.2016
 *      Author: Basti
 */

#include "CarModel.h"

CarModel::CarModel(const double dAxis, const double timeStep) : timeStep(timeStep) {
								fwdKin = ForwardKinematics(dAxis);
								// set steering to quasi neutral
								//steering = 8;
								//steeringAngle = 0;
								setSteering(8);
								// start with stationary state
								velocity = 0;
								distance = 0;
                                pose=std::vector<double>(3,0);
                                angularVelocity = 0;

}
void CarModel::setSteering(const int steering){
								if(steering>50) {
																this->steering = 50;
																steeringToAngle();
								}else if(steering < -50) {
																this->steering = -50;
																steeringToAngle();
								}else{
																this->steering = steering;
																steeringToAngle();
								}
}
const int CarModel::getSteering() const {
								return steering;
}
const double CarModel::getSteeringAngle() const {
								return steeringAngle;
}

void CarModel::steeringToAngle(){
								steeringAngle = angleArray[steering+50];
}

const std::vector<double>& CarModel::getUpdate(const int newSteering, const int newSpeed){
                                double ds = velocity * timeStep;
                                //double ds = speedToVelocity(newSpeed) * timeStep;
                                double oldYaw = pose[2];
								pose = fwdKin.getUpdate(fwdKin.degToRad(steeringAngle), ds);
								distance += ds;
                                speedToVelocity(newSpeed);
                                setAngularVelocity(oldYaw, pose[2]);
								setSteering(newSteering);
								return pose;
}

void CarModel::angleToSteering(const double alpha){
								if(alpha>=angleArray[0]) {
																setSteering(-50);
																return;
								}else if(alpha<=angleArray[100]) {
																setSteering(50);
																return;
								}else{
																for(int i = 1; i <= 100; i++) {
																								if(alpha < angleArray[i-1] && alpha >= angleArray[i]) {
																																setSteering(i-50);
																																return;
																								}
																}
								}
}

void CarModel::speedToVelocity(const int speed) {
    if(speed<=-10){
        velocity = velocityArray[0];
    }else if(speed>=10){
        velocity = velocityArray[20];
    }else{
        velocity = velocityArray[10+speed];
    }
}

const double CarModel::getVelocity() const{
    return velocity;
}

void CarModel::setAngularVelocity(const double yaw0, const double yaw1){
    double dTh = yaw1-yaw0;
    if(dTh<-fwdKin.PI){
        dTh += 2*fwdKin.PI;
    }else if(dTh>fwdKin.PI){
        dTh -= 2*fwdKin.PI;
    }
    angularVelocity = dTh/timeStep;
}

const double CarModel::getAngularVelocity() const{
    return angularVelocity;
}
