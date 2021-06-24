#!/usr/bin/env python2
#coding=UTF-8

import rospy


if __name__ == "__main__":
    rospy.init_node("update_param_p")
    rospy.set_param("/turtlesim/background_r", 255)
    rospy.set_param("/turtlesim/background_g", 255)
    rospy.set_param("/turtlesim/background_b", 255)

    # rospy.set_param("background_r", 255)
    # rospy.set_param("background_g", 255)
    # rospy.set_param("background_b", 255)
