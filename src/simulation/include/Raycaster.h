/*
 * Raycaster.h
 *
 *  Created on: May 20, 2016
 *      Author: sebastian
 */

#ifndef RAYCASTER_H_
#define RAYCASTER_H_

#include <opencv2/opencv.hpp>
#include <opencv2/imgproc/imgproc.hpp>
#include <math.h>
#include <vector>
#include <iostream>
#include <memory>

namespace rc {
typedef std::shared_ptr<std::pair<double,double> > minMaxFov_ptr;
typedef std::shared_ptr<cv::Vec2i> vec2i_ptr;
typedef std::shared_ptr<std::vector<float> > rangeArray_ptr;
const double PI = acos(-1);
class Raycaster;
}



using rc::Raycaster;
class Raycaster {
public:
								Raycaster();
								Raycaster(const Raycaster &other);
								Raycaster(const cv::Mat map, const double meterPerPixel, const double maxDistance, const double FOV,
																		const double angularResolution);
								const rc::rangeArray_ptr getRangeInfo(const rc::vec2i_ptr pointOfOrigin, const double theta);
								const double getUsRangeInfo(const rc::vec2i_ptr pointOfOrigin, const double theta);
								const rc::minMaxFov_ptr angleMinMax(const double theta) const;
								// Find out how to put those functions in the namespace,
								// because they don't have to be member functions
								const int sgn(const int x) const;
								double correctYawAngle(const double theta, const double increment) const;
								double degToRad(double angle) const;
								double radToDeg(double angle) const;

private:
								cv::Mat map;
								double meterPerPixel;
								double maxDistance;
								double FOV;
								double angularResolution;
								cv::Vec3b obstacleColor;
								cv::Vec3b color;
								cv::Vec2i origin;
								std::vector<float> rangeArray;

								void init();
								const rc::vec2i_ptr calcEndpoint(const double heading) const;
								const rc::vec2i_ptr bresenham(const cv::Vec2i& end);
};




#endif /* RAYCASTER_H_ */
