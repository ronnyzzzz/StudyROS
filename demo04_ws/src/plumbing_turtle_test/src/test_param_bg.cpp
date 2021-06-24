#include "ros/ros.h"

/*
    注意命名空间的使用。
    限定参数的应用范围
*/

int main(int argc, char* argv[]) {
    ros::init(argc, argv, "set_param");
    // 方法一
    // ros::NodeHandle nh;
    // nh.setParam("/turtlesim/background_r", 0);
    // nh.setParam("/turtlesim/background_g", 0);
    // nh.setParam("/turtlesim/background_b", 0);

    // 方法二
    ros::param::set("/turtlesim/background_r", 0);
    ros::param::set("/turtlesim/background_g", 0);
    ros::param::set("/turtlesim/background_b", 0);

    return 0;
}