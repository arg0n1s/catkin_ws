
#ifndef FRONTIER_DETECTOR_H_
#define FRONTIER_DETECTOR_H_

#include <vector>
#include <cv.h>

typedef std::vector< std::vector<cv::Point> > contours;

class FrontierDetector {
public:
                FrontierDetector();
                FrontierDetector(const FrontierDetector& other);
								FrontierDetector(const int freeColor, const int unknownColor, const int occupiedColor, const int dilateRate=3, const int blurKernel=5);
                void processFrontiers(const cv::Mat& occupancyGrid);
                const contours& getFrontiers() const;

private:
                int freeColor;
                int unknownColor;
                int occupiedColor;
                int dilateRate;
                int blurKernel;

								cv::Mat map, th_all_map, th_wall_map, all_edges, wall_only_edges, bw_mask, black, floating_edges;
								contours detectedFrontiers;

								void imgProc();
								void detectEdges();
                void findFrontiers();

};

#endif
