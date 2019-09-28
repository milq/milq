# My Snippets

* C++:
    * OpenCV:
        * [Calculate the angle between two vectors](#opencv-calculate-the-angle-between-two-vectors-).

## C++

### OpenCV: Calculate the angle between two vectors ([↑](#my-snippets))

```cpp
#include <opencv2/core/core.hpp>

int main()
{
   cv::Point3d A(0.0, 1.0, 0.0);
   cv::Point3d B(1.0, 0.0, 0.0);

   double cross = cv::norm(A.cross(B));
   double dot = A.dot(B);

   double angle = std::atan2(cross, dot) * 180.0 / M_PI;

   return 0;
}
```

### OpenCV: Rotate an 2D image without cropping ([↑](#my-snippets))

```cpp
#include <opencv2/core/core.hpp>
#include <opencv2/imgcodecs/imgcodecs.hpp>
#include <opencv2/imgproc/imgproc.hpp>

int main()
{
    cv::Mat src = cv::imread('image.png', cv::IMREAD_UNCHANGED);
    double angle = -45;

    cv::Point2f center((src.cols-1)/2.0, (src.rows-1)/2.0);
    cv::Mat rot = cv::getRotationMatrix2D(center, angle, 1.0);
    cv::Rect2f bbox = cv::RotatedRect(cv::Point2f(), src.size(), angle).boundingRect2f();

    rot.at<double>(0,2) += bbox.width/2.0 - src.cols/2.0;
    rot.at<double>(1,2) += bbox.height/2.0 - src.rows/2.0;

    cv::Mat dst;
    cv::warpAffine(src, dst, rot, bbox.size());
    cv::imwrite('image_rotated.png', dst);

    return 0;
}
```

Snippet created by [Lars Schillingmann](https://stackoverflow.com/questions/22041699/rotate-an-image-without-cropping-in-opencv-in-c).
