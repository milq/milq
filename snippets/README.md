# My Snippets

* C:
    * [Calculate the angle between two 3D vectors](#calculate-the-angle-between-two-3d-vectors-).
* C++:
    * OpenCV:
        * [Calculate the angle between two 3D vectors](#calculate-the-angle-between-two-3d-vectors-).
        * [Rotate an 2D image without cropping](#rotate-an-2d-image-without-cropping-).
* Python:
   * [Create a virtual environment](#create-a-virtual-environment-).

## C

### Calculate the angle between two 3D vectors ([↑](#my-snippets))

```c
#include <stdio.h>
#include <math.h>

int main()
{
    double ax = 0.0, ay = 1.0, az = 0.0;
    double bx = 1.0, by = 0.0, bz = 0.0;

    double cross = sqrt(ax * ax + ay * ay + az * az);
    double dot = ax * bx + ay * by + az * bz;

    double angle = atan2(cross, dot) * 180.0 / M_PI;

    printf("%lf\n", angle);

    return 0;
}
```

## C++

### Calculate the angle between two 3D vectors ([↑](#my-snippets))

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

### Rotate an 2D image without cropping ([↑](#my-snippets))

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

Created by [Lars Schillingmann](https://stackoverflow.com/questions/22041699/rotate-an-image-without-cropping-in-opencv-in-c).

## Python

### Create a virtual environment ([↑](#my-snippets))

```sh
#!/bin/bash

sudo apt update
sudo apt install python3 python3-venv

python3 -m venv myenv

source myenv/bin/activate
```
