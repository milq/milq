#include <opencv2/core/core.hpp>
#include <opencv2/viz/vizcore.hpp>

int main()
{
    cv::viz::Viz3d window = cv::viz::Viz3d("Viz demonstration");

    cv::Point3d min(0.25, 0.0, 0.25);
    cv::Point3d max(0.75, 0.5, 0.75);

    cv::viz::WCube cube(min, max, true, cv::viz::Color::blue());
    cube.setRenderingProperty(cv::viz::LINE_WIDTH, 4.0);

    window.showWidget("Axis widget", cv::viz::WCoordinateSystem());
    window.showWidget("Cube widget", cube);

    while(!window.wasStopped()) {
        window.spinOnce(1, true);
    }

    return 0;
}
