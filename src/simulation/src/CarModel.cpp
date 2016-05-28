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
                                //double ds = velocity * timeStep;
                                double ds = speedToVelocity(newSpeed) * timeStep;
								pose = fwdKin.getUpdate(fwdKin.degToRad(steeringAngle), ds);
								distance += ds;
                                velocity = speedToVelocity(newSpeed);
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

const double CarModel::speedToVelocity(const int speed) const{
    if(speed<=-10){
        return velocityArray[0];
    }else if(speed>=10){
        return velocityArray[20];
    }else{
        return velocityArray[10+speed];
    }
}
