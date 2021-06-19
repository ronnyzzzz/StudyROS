#! /usr/bin/env python
#coding=UTF-8
import rospy
from plumbing_server_client.srv import *

"""
    服务器端实现:
        1.导包
        2.初始化 ROS 节点
        3.创建服务对象
        4.回调函数处理请求并产生响应
        5.spin 函数
"""

def doReq(request):
    num1 = request.num1
    num2 = request.num2
    rospy.loginfo("服务器接收的数据：num1 = %d, num2 = %d", num1, num2)
    sum = num1 + num2
    response = AddIntsResponse()
    response.sum = sum
    rospy.loginfo("服务器响应的结果：sum = %d", sum)
    return response

if __name__ == "__main__":
    rospy.init_node("AddInts_Server_p")
    server = rospy.Service("AddInts", AddInts, doReq)
    rospy.loginfo("服务器启动...")
    rospy.spin()
    pass