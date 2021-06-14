#!/usr/bin/env python2

"""
    Python 版 HelloWorld
    需要先指定解释器
"""
import rospy

if __name__ == "__main__":
    rospy.init_node("Hello")
    rospy.loginfo("Hello World!!!!")
