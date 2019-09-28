# My Snippets

## C++

### Calculate the angle between two vectors

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
