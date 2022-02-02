#! /usr/bin/env python

import rospy
from sensor_msgs.msg import Imu
import rospkg
import numpy as np
import sys

class sim_gps():
    
    def __init__(self):
        rospy.init_node('gps_node', anonymous=True)
        rospy.Subscriber('/imu', Imu, self.callback)
        rospy.spin()

    def callback(self, data):
        ori_x = data.orientation.x
        ori_y = data.orientation.y
        ori_z = data.orientation.z
        ang_x = data.angular_velocity.x
        ang_y = data.angular_velocity.y
        ang_z = data.angular_velocity.z
        lin_x = data.linear_acceleration.x
        lin_y = data.linear_acceleration.y
        lin_z = data.linear_acceleration.z
        ori_cov=data.orientation_covariance
        ang_vel_cov=data.angular_velocity_covariance
        lin_acc_cov=data.linear_acceleration_covariance
        imu_header = data.header

        print(ori_x)

if __name__=="__main__":

    sg = sim_gps()
