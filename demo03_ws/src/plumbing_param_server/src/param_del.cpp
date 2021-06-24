#include "ros/ros.h"

/* 
    参数服务器操作之删除_C++实现:
    ros::NodeHandle
        deleteParam("键")
        根据键删除参数，删除成功，返回 true，否则(参数不存在)，返回 false
    ros::param
        del("键")
        根据键删除参数，删除成功，返回 true，否则(参数不存在)，返回 false
*/

int main(int argc, char* argv[]) {
    setlocale(LC_ALL, "");
    ros::init(argc, argv, "del_param");

    // NodeHandle
    ros::NodeHandle nh;
    bool nh_res_int = nh.deleteParam("nh_int");
    ROS_INFO("nh 删除结果: %d", nh_res_int);

    // ros::param
    bool param_res_int = ros::param::del("nh_int");
    ROS_INFO("param 删除结果: %d", param_res_int);

    return 0;
}