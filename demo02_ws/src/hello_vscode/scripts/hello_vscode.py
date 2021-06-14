#! /usr/bin/env python
#coding=UTF-8

import rospy

if __name__ == "__main__":
    # 初始化ros节点
    rospy.init_node("hello")
    # 输出日志
    rospy.loginfo("hello vscode! 这是python版")