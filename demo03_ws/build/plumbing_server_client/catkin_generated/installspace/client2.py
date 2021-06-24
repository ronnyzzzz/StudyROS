#!/usr/bin/env python2
#coding=UTF-8

"""
    客户端实现:
        1.导包
        2.初始化 ROS 节点
        3.创建请求对象
        4.发送请求
        5.接收并处理响应

    优化:
        加入数据的动态获取
"""

import rospy
from plumbing_server_client.srv import *
import sys


if __name__ == "__main__":
    if len(sys.argv) != 3:
        rospy.logerr("请提交两个参数")
        sys.exit(1)
    
    rospy.init_node("AddInts_Client_p")
    client = rospy.ServiceProxy("AddInts", AddInts)
    
    # 等待服务启动，阻塞函数
    client.wait_for_service()
    # rospy.wait_for_service("AddInts")

    # 发送请求，接收并处理响应
    req = AddIntsRequest()
    req.num1 = int(sys.argv[1])
    req.num2 = int(sys.argv[2])
    resq = client.call(req)
    rospy.loginfo("响应结果：%d", resq.sum)

