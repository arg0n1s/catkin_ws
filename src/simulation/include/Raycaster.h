/*
 * Raycaster.h
 *
 *  Created on: May 20, 2016
 *      Author: sebastian
 */

#ifndef RAYCASTER_H_
#define RAYCASTER_H_

//#include <cv.h>
#include <opencv2/opencv.hpp>
#include <opencv2/imgproc/imgproc.hpp>
#include <math.h>
#include <vector>
#include <iostream>

class Raycaster {
public:
	Raycaster();
	Raycaster(const Raycaster& other);
	Raycaster(const cv::Mat map, const double meterPerPixel, const double maxDistance, const double FOV,
			const double angularResolution);
	std::vector<float> getRangeInfo(const cv::Vec2i pointOfOrigin, double theta);
	std::pair<double, double> angleMinMax(double theta);
	cv::Mat& getMap();
	double degToRad(double angle);
	double radToDeg(double angle);

private:
	cv::Mat map;
	double meterPerPixel;
	double maxDistance;
	double FOV;
	double angularResolution;
	double PI;
	cv::Vec3b obstacleColor;
	cv::Vec3b color;
	cv::Vec2i origin;
	std::vector<float> rangeArray;

	void init();
	double correctYawAngle(const double theta, const double increment) const;
	const cv::Vec2i calcEndpoint(const double heading) const;
	const int sgn(const int x) const;
	const cv::Vec2i bresenham(const cv::Vec2i& end);
};

#endif /* RAYCASTER_H_ */
