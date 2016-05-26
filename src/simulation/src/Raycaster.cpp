/*
 * Raycaster.cpp
 *
 *  Created on: May 20, 2016
 *      Author: sebastian
 */

#include "Raycaster.h"

Raycaster::Raycaster() {
	map = cv::Mat();
	meterPerPixel = 1.0;
	maxDistance = 0.0;
	FOV = 0.0;
	angularResolution = 0.0;
	obstacleColor = cv::Vec3b(0, 0, 0);
	origin = cv::Vec2i(0, 0);
	rangeArray = std::vector<float>();
	color = cv::Vec3b(255, 0, 0);
	PI = acos(-1);

}
Raycaster::Raycaster(const Raycaster& other) :
		map(other.map), meterPerPixel(other.meterPerPixel), maxDistance(other.maxDistance), FOV(other.FOV), angularResolution(
				other.angularResolution), obstacleColor(other.obstacleColor), origin(
				other.origin), rangeArray(other.rangeArray), color(other.color), PI(
				other.PI) {
}

Raycaster::Raycaster(const cv::Mat map, const double meterPerPixel, const double maxDistance,
		const double FOV, const double angularResolution) :
		map(map), meterPerPixel(meterPerPixel), maxDistance(maxDistance), FOV(FOV), angularResolution(
				angularResolution) {
	init();

}

void Raycaster::init() {
	//ignore useless color information
	//cv::cvtColor(map, map, CV_RGB2GRAY);
	//cv::threshold(map, map, 5, 255, CV_THRESH_BINARY);
	//cv::cvtColor(map, map, CV_GRAY2RGB);
	//set true black as obstacle color
	obstacleColor = cv::Vec3b(0, 0, 0);
	origin = cv::Vec2i(0, 0);
	rangeArray = std::vector<float>();
	color = cv::Vec3b(254, 0, 0);
	PI = acos(-1);
}

double Raycaster::degToRad(double angle){
	return angle/180.0*PI;
}
double Raycaster::radToDeg(double angle){
	return angle/PI*180.0;
}

cv::Mat& Raycaster::getMap() {
	return map;
}

std::vector<float> Raycaster::getRangeInfo(const cv::Vec2i pointOfOrigin, double theta) {
	origin = pointOfOrigin;
	double eps = 0.001;
	//yaw needs to be shifted by -90deg because robot people put their yaw=0 on the positive x-axis
	double viewAngle = correctYawAngle(theta, -90);
	std::pair<double, double> minMaxFov = angleMinMax(viewAngle);
	rangeArray = std::vector<float>((int)FOV/angularResolution);
	int counter = 0;
	for (double angle = minMaxFov.first; !(angle <= minMaxFov.second+eps && angle >= minMaxFov.second-eps); angle =
			correctYawAngle(angle, angularResolution)) {
		rangeArray[counter] = norm(bresenham(calcEndpoint(angle)), origin)*meterPerPixel;
		//std::cout<<"D in m: "<<rangeArray[counter]<<" / th: "<<angle<<std::endl;
		counter++;
	}
	//std::cout<<"minFov: " << minMaxFov.first << " maxFov: "<<minMaxFov.second<<std::endl;
	return rangeArray;

}

std::pair<double, double> Raycaster::angleMinMax(double theta) {
	double minAngle = correctYawAngle(theta, -FOV / 2);
	double maxAngle = correctYawAngle(theta, FOV / 2);
	std::pair<double,double> out(minAngle, maxAngle);
	return out;
}

double Raycaster::correctYawAngle(const double theta,
		const double increment) const {
	double yaw = 0;
	double angle = theta + increment;
	if (angle > 180.0) {
		yaw = -180.0 - (180.0 - angle);
	} else if (angle < -180.0) {
		yaw = 180.0 - (-180.0 - angle);
	} else {
		yaw = angle;
	}
	return yaw;
}
const cv::Vec2i Raycaster::calcEndpoint(const double heading) const {
	double xMax;
	double yMax;
	double m;

	if (heading == 0) {			//forward
		xMax = 0;
		yMax = maxDistance;
		m = 0;
	} else if (heading == 180.0) {	//backward
		xMax = 0;
		yMax = -maxDistance;
		m = 0;
	} else if (heading == 90.0) {	//left
		xMax = -maxDistance;
		yMax = 0;
		m = 0;
	} else if (heading == -90.0) {	//right
		xMax = maxDistance;
		yMax = 0;
		m = 0;
	} else if (heading < 0 && heading > -90.0) {		// first quadrant
		float modheading = (heading + 90.0) * PI / 180.0;
		m = tan(modheading);
		xMax = cos(modheading) * maxDistance;
		yMax = m * xMax;
	} else if (heading < -90.0 && heading != 180.0) {	// fourth quadrant
		float modheading = (heading + 90.0) * PI / 180.0;
		m = tan(modheading);
		xMax = cos(modheading) * maxDistance;
		yMax = m * xMax;
	} else if (heading > 0 && heading < 90.0) {		// second quadrant
		float modheading = (heading - 90.0) * PI / 180.0;
		m = tan(modheading);
		xMax = -cos(modheading) * maxDistance;
		yMax = m * xMax;
	} else {								// third quadrant -> heading > 90
		float modheading = (heading - 90.0) * PI / 180.0;
		m = tan(modheading);
		xMax = -cos(modheading) * maxDistance;
		yMax = m * xMax;
	}

	cv::Vec2i endpoint(origin[0] + (int) xMax, origin[1] - (int) yMax);
	//double d = norm(endpoint, origin);
	//std::cout<<"Point:"<<endpoint<<" maxD:"<<d<<std::endl;
	return endpoint;
}

const int Raycaster::sgn(const int x) const {
	return (x > 0) ? 1 : (x < 0) ? -1 : 0;
}

const cv::Vec2i Raycaster::bresenham(const cv::Vec2i& end) {
	int x, y, t, dx, dy, incx, incy, pdx, pdy, ddx, ddy, es, el, err;
	cv::Vec2i trueEnd = end;

	dx = end[0] - origin[0];
	dy = end[1] - origin[1];

	incx = sgn(dx);
	incy = sgn(dy);
	if (dx < 0)
		dx = -dx;
	if (dy < 0)
		dy = -dy;

	if (dx > dy) {
		pdx = incx;
		pdy = 0;
		ddx = incx;
		ddy = incy;
		es = dy;
		el = dx;
	} else {
		pdx = 0;
		pdy = incy;
		ddx = incx;
		ddy = incy;
		es = dx;
		el = dy;
	}

	x = origin[0];
	y = origin[1];
	err = el / 2;

	//map.at<cv::Vec3b>(y, x) = color;

	for (t = 0; t < el; ++t) {
		err -= es;
		if (err < 0) {
			err += el;
			x += ddx;
			y += ddy;
		} else {
			x += pdx;
			y += pdy;
		}
		//still needs to be checked for file boundaries!
		if (y >= 0 && x >= 0 && y < map.rows && x < map.cols) {
			if (map.at<cv::Vec3b>(y, x) != obstacleColor) {
				trueEnd[0]=x;
				trueEnd[1]=y;
			} else {
				//map.at<cv::Vec3b>(y, x) = color;
				//trueEnd[0]=x;
				//trueEnd[1]=y;
				return trueEnd;;
			}
		}else{
			return trueEnd;
		}

	}
	return trueEnd;

}
