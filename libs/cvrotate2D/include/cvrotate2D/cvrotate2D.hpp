#include <opencv2/core/core.hpp>
#include <opencv2/imgcodecs/imgcodecs.hpp>
#include <opencv2/imgproc/imgproc.hpp>

namespace cv {

/**
 * Rotate a matrix in 2D without cropping
 * @param src     Input matrix array to be rotated
 * @param dst     Output matrix array rotated
 * @param degrees Angle to rotate in degrees
 */
void rotate2D(const cv::Mat & src, cv::Mat & dst, const double degrees);

}
