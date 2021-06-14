#include "plumbing_pub_sub/Person.h"
#include "ros/ros.h"
#include "std_msgs/String.h"

/*
    订阅方实现：
        1.包含头文件
        2.初始化ros节点
        3.创建节点句柄
        4.创建订阅者对象
        5.处理订阅到的数据
        6.声明spin()函数
*/

void doMsg(const plumbing_pub_sub::Person::ConstPtr& msg_p) {
  ROS_INFO("收到的消息: %s, %d, %.2f", msg_p->name.c_str(), msg_p->age,
           msg_p->height);
}

int main(int argc, char* argv[]) {
  setlocale(LC_ALL, "");

  ros::init(argc, argv, "subscriber");
  ros::NodeHandle nh;
  // ros::Subscriber sub = nh.subscribe("Message01", 10, doMsg);
  ros::Subscriber sub = nh.subscribe("Message02", 10, doMsg);

  ros::spin();  // 循环读取接收的数据，并调用回调处理函数

  return 0;
}