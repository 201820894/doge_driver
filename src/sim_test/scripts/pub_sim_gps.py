#! /usr/bin/env python

import rospy
from std_msgs.msg import Float64
import rospkg
import numpy as np
import sys

class sim_gps():
    
    def __init__(self):
        rospy.init_node('gps_node', anonymous=True)
        self.pub=rospy.Publisher('/pub_imu', Float64, queue_size=10) #how many datas to stack b4 call
        self.count=0
        self.run()

    def run(self):
        while(True):
            self.count+=1
            self.pub.publish(self.count)




if __name__=="__main__":

    sg = sim_gps()
