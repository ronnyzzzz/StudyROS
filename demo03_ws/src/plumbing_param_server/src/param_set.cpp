#include "ros/ros.h"

/*
    参数服务器操作之新增与修改(二者API一样)_C++实现:
    在 roscpp 中提供了两套 API 实现参数操作
    ros::NodeHandle
        setParam("键",值)
    ros::param
        set("键","值")

    示例:分别设置整形、浮点、字符串、bool、列表、字典等类型参数
        修改(相同的键，不同的值)

*/

int main(int argc, char* argv[]) {
  ros::init(argc, argv, "set_update_param");

  std::vector<std::string> students;
  students.emplace_back("San Zhang");
  students.emplace_back("Er Wang");
  students.emplace_back("Si Li");

  std::map<std::string, std::string> friends;
  friends["guo"] = "huang";
  friends["yuan"] = "xiao";

  // NodeHandle
  ros::NodeHandle nh;
  nh.setParam("nh_int", 10);
  nh.setParam("nh_double", 3.14);
  nh.setParam("nh_bool", true);
  nh.setParam("nh_string", "hello");
  nh.setParam("nh_vector", students);
  nh.setParam("nh_map", friends);
  // 修改
  nh.setParam("nh_int", 1000);

  // ros::param
  ros::param::set("param_int", 20);
  ros::param::set("param_double", 3.14);
  ros::param::set("param_bool", false);
  ros::param::set("param_string", "Hello");
  ros::param::set("param_vector", students);
  ros::param::set("param_map", friends);
  // 修改
  ros::param::set("param_int", 2000);

  return 0;
}