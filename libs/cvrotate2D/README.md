cvrotate2D
==========

The library **cvrotate2D** is an OpenCV library for rotating a matrix without cropping.

![Overview of cvrotate2D](https://raw.github.com/milq/cvrotate2D/master/overview.png "Overview of 'cvrotate2D'")

How to use
----------

<i>void rotate2D(InputArray <b>src</b>, OutputArray **dst**, double <b>degrees</b>)</i>

Example
-------

Compile the demonstration with the following command:

```
g++ demo.cpp -o demo cvrotate2D.cpp -lopencv_core -lopencv_imgcodecs -lopencv_imgproc
```

And then execute ```./demo``` to obtain the file *rotated.png* with the image rotated.

Example 2 (compiling the library)
---------------------------------

Compile the library:

```
g++ -O3 -Wall -shared -fpic -o libcvrotate2D.so cvrotate2D.cpp
```

Compile the demonstration using the compiled library *cvrotate2D*:

```
g++ demo.cpp -o demo -lopencv_core -lopencv_highgui -lopencv_imgcodecs -lcvrotate2D -I./ -L./
```

Finally, execute ```./demo``` to obtain the file *frog_rotated.png* with the image rotated.


### Optional: C++ code to calculate the angle between two vectors

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
