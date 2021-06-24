#include "ros/ros.h"

/*
参数服务器操作之查询_C++实现:
    在 roscpp 中提供了两套 API 实现参数操作

    ros::NodeHandle
        param(键,默认值) 
            存在，返回对应结果，否则返回默认值
        getParam(键,存储结果的变量)
            存在,返回 true,且将值赋值给参数2
            若果键不存在，那么返回值为 false，且不为参数2赋值
        getParamCached键,存储结果的变量)--提高变量获取效率
            存在,返回 true,且将值赋值给参数2
            若果键不存在，那么返回值为 false，且不为参数2赋值
        getParamNames(std::vector<std::string>)
            获取所有的键,并存储在参数 vector 中 
        hasParam(键)
            是否包含某个键，存在返回 true，否则返回 false
        searchParam(参数1，参数2)
            搜索键，参数1是被搜索的键，参数2存储搜索结果的变量

    ros::param ----- 与 NodeHandle 类似
*/

int main(int argc, char* argv[]) {
    setlocale(LC_ALL, "");
    ros::init(argc, argv, "get_param");
    
    // NodeHandle
    ros::NodeHandle nh;
    // param
    int nh_res_int = nh.param("nh_int", 100);  // 键存在
    int nh_res_int2 = nh.param("nh_int2", 100);  // 键不存在
    ROS_INFO("param 获取结果: %d, %d", nh_res_int, nh_res_int2);
    // getParam
    double nh_res_double;
    bool nh_res_bool;
    std::map<std::string, std::string> nh_res_friends;
    std::vector<std::string> nh_res_students;
    nh.getParam("nh_double", nh_res_double);
    nh.getParam("nh_bool", nh_res_bool);
    nh.getParam("nh_vector", nh_res_students);
    nh.getParam("nh_map", nh_res_friends);
    ROS_INFO("getParam 获取结果：%.2f, %d", nh_res_double, nh_res_bool);
    for (auto &&stu: nh_res_students) {
        ROS_INFO("students name: %s", stu.c_str());
    }
    for (auto &&f : nh_res_friends) {
        ROS_INFO("friends 元素: %s : %s", f.first.c_str(), f.second.c_str());
    }
    // getParamCached
    std::string nh_res_string;
    nh.getParamCached("nh_string", nh_res_string);
    ROS_INFO("通过缓存获取数据: %s", nh_res_string.c_str());
    // getParamNames
    std::vector<std::string> nh_param_names;
    nh.getParamNames(nh_param_names);
    for (auto &&name: nh_param_names) {
        ROS_INFO("param name: %s", name.c_str());
    }
    // hasParam
    ROS_INFO("是否存在 nh_int ？ %d", nh.hasParam("nh_int"));
    ROS_INFO("是否存在 nh_int2 ？ %d", nh.hasParam("nh_int2"));
    // searchParam
    std::string key;
    nh.searchParam("nh_int", key);
    ROS_INFO("搜索键: %s", key.c_str());

    return 0;
}