#include "ros/ros.h"
#include "turtlesim/Spawn.h"

/*
    生成一只小乌龟
    准备工作:
        1.服务话题 /spawn
        2.服务消息类型 turtlesim/Spawn
        3.运行前先启动 turtlesim_node 节点

    实现流程:
        1.包含头文件
          需要包含 turtlesim 包下资源，注意在 package.xml 配置
        2.初始化 ros 节点
        3.创建 ros 句柄
        4.创建 service 客户端
        5.等待服务启动
        6.发送请求
        7.处理响应
*/

int main(int argc, char* argv[]) {
    setlocale(LC_ALL, "");
    ros::init(argc, argv, "set_turtle");
    ros::NodeHandle nh;
    ros::ServiceClient client = nh.serviceClient<turtlesim::Spawn>("/spawn");
    // client.waitForExistence()
    ros::service::waitForService("/spawn");

    turtlesim::Spawn sp;
    sp.request.x = 1.0;
    sp.request.y = 1.0;
    sp.request.theta = 1.57;
    sp.request.name = "turtle2";

    bool flag = client.call(sp);
    if (flag) {
        ROS_INFO("new turtle name: %s", sp.response.name.c_str());
    } else {
        ROS_INFO("turtle spwan fail!");
    }

    return 0;
}