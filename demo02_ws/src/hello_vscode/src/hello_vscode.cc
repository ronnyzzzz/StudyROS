#include "ros/ros.h"

int main(int argc, char *argv[]) {
    // 解决乱码问题
    setlocale(LC_ALL, "");
    
    ros::init(argc, argv, "hello");
    
    ROS_INFO("hello vscode 哈哈");

    return 0;
}