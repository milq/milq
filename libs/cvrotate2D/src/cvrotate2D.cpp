#include "cvrotate2D.hpp"

namespace cv {

void rotate2D(const cv::Mat & src, cv::Mat & dst, const double degrees)
{
    cv::Point2f center(src.cols/2.0, src.rows/2.0);
    cv::Mat rot = cv::getRotationMatrix2D(center, degrees, 1.0);
    cv::Rect bbox = cv::RotatedRect(center,src.size(), degrees).boundingRect();

    rot.at<double>(0,2) += bbox.width/2.0 - center.x;
    rot.at<double>(1,2) += bbox.height/2.0 - center.y;

    cv::warpAffine(src, dst, rot, bbox.size());
}

}
