#include <sstream>
#include "plumbing_pub_sub/Person.h"
#include "ros/ros.h"
#include "std_msgs/String.h"

/*
    发布方实现:
        1.包含头文件
        2.创建ros节点
        3.创建节点句柄
        4.创建发布者对象
        5.编写发布逻辑并发布数据
*/

int main(int argc, char *argv[]) {
  setlocale(LC_ALL, "");

  ros::init(argc, argv, "publisher");
  ros::NodeHandle nh;
  // ros::Publisher pub = nh.advertise<std_msgs::String>("Message01", 10);
  ros::Publisher pub = nh.advertise<plumbing_pub_sub::Person>("Message02", 10);

  // 创建被发布的数据
  // std_msgs::String msg;
  // std::string msg_front = "Hello ";  // 消息前缀
  plumbing_pub_sub::Person person;
  person.name = "ZZZ";
  person.age = 12;
  person.height = 1.67;
  // 消息发布频率
  ros::Rate rate(1);
  // 消息计数器
  int count = 0;

  ros::Duration(3).sleep();  // 等待注册成功
  while (ros::ok()) {
    ++count;
    // std::stringstream ss;
    // ss << msg_front << count;
    // msg.data = ss.str();
    // 发布消息
    pub.publish(person);
    // 添加日志
    ROS_INFO("发送的消息: %s, %d, %.2f", person.name.c_str(), person.age,
             person.height);
    rate.sleep();
    ros::spinOnce();
  }
  return 0;
}