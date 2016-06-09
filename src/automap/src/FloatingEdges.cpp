/*
 * FloatingEdges.cpp
 *
 *  Created on: Jun 6, 2016
 *      Author: sebastian
 */

#include "FloatingEdges.h"

FloatingEdges::FloatingEdges(const cv::Mat& map):map(map) {
	g_map = th_all_map = th_wall_map = all_edges = wall_only_edges = bw_mask, black = floating_edges = map;
	edges = contours();
	detectedEdges = contVector();
	hierarchy = std::vector<cv::Vec4i>();

}

void FloatingEdges::imgProc(){
	cv::cvtColor(map, g_map, CV_RGB2GRAY);
	cv::threshold(g_map, th_all_map, 208, 255, CV_THRESH_BINARY);
    cv::threshold(g_map, th_wall_map, 204, 255, CV_THRESH_BINARY);
    black = cv::Mat(map.size(), CV_8UC1, cv::Scalar(0));
}

void FloatingEdges::detectEdges(){
	int lTh = 204;
	cv::Canny(th_all_map, all_edges, lTh, 300, 3);
	cv::Canny(th_wall_map, wall_only_edges, lTh, 300, 3);
	cv::dilate(wall_only_edges, bw_mask, cv::Mat());
	for(int i = 1; i<=4; i++){
		cv::dilate(bw_mask, bw_mask, cv::Mat());
	}
	cv::bitwise_not(bw_mask, bw_mask);
	cv::bitwise_or(all_edges, black, floating_edges, bw_mask);
}

bool FloatingEdges::findFloatingEdges(){
	detectedEdges = contVector();
	hierarchy = std::vector<cv::Vec4i>();
	findContours(floating_edges, detectedEdges, hierarchy, CV_RETR_CCOMP, CV_CHAIN_APPROX_SIMPLE);
	if(detectedEdges.size()==0){
		return false;
	}else{
		edges = contours();
		for(auto current : detectedEdges){
			edges.push_back(Contour(current));
		}

	}
	return true;
}

cv::Mat FloatingEdges::drawEdges(){
	if(detectedEdges.size()==0){
		return map;
	}else{
		cv::Mat out = map.clone();
		for(int idx = 0; idx >=0; idx = hierarchy[idx][0]){
			cv::drawContours(out, detectedEdges, idx, cv::Scalar(0, 0, 255), CV_FILLED, 8, hierarchy);
		}
		for(auto current : edges){
			cv::circle(out, current.getCenter(), 3, cv::Scalar(0, 255, 0), -1, 8, 0);
		}
		return out;
	}

}

