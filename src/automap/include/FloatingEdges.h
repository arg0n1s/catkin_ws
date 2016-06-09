/*
 * FloatingEdges.h
 *
 *  Created on: Jun 6, 2016
 *      Author: sebastian
 */

#ifndef FLOATINGEDGES_H_
#define FLOATINGEDGES_H_

#include <vector>
#include <cv.h>
#include "Contour.h"

typedef std::vector<Contour> contours;
typedef std::vector< std::vector<cv::Point> > contVector;

class FloatingEdges {
public:
	FloatingEdges(const cv::Mat& map);
	void imgProc();
	void detectEdges();
	bool findFloatingEdges();
	cv::Mat drawEdges();
private:
	cv::Mat map, g_map, th_all_map, th_wall_map, all_edges, wall_only_edges, bw_mask, black, floating_edges;
	contours edges;
	contVector detectedEdges;
	std::vector<cv::Vec4i>hierarchy;

};

#endif /* FLOATINGEDGES_H_ */
