#! /usr/bin/env python

from numpy import angle
import rospy
import rospkg
import numpy as np
import sys
from std_msgs.msg import Float64
from morai_msgs.msg import EgoVehicleStatus
from vesc_msgs.msg import VescStateStamped


class EgoReceiver:
    def __init__(self):

        rospy.init_node("Ego_py_speed_angle", anonymous=False)
        self.subEgo_speed = rospy.Subscriber(
            "/sensors/core", EgoVehicleStatus, self.speed_callback
        )
        self.subEgo_angle = rospy.Subscriber(
            "/sensors/servo_position_command", Float64, self.angle_callback
        )
        self.subEgo_topic = rospy.Subscriber(
            "/Ego_topic", EgoVehicleStatus, self.Ego_callback
        )

        self.pubEgo_speed = rospy.Publisher(
            "/commands/motor/speed", Float64, queue_size=10
        )
        self.pubEgo_angle = rospy.Publisher(
            "/commands/servo/position", Float64, queue_size=10
        )
        self.cmd_speed = 0
        self.cmd_angle = 0
        # rospack=rospkg.RosPack()
        # pkg_path = rospack.get_path('sim_test')
        # full_path = pkg_path+'/scripts/'+'Ego_data.txt'
        # self.f = open(full_path, 'a')

        rospy.on_shutdown(self.Ego_shutdown)
        rospy.spin()

    def Ego_callback(self, data):
        Ego_header = data.header

        id = data.unique_id

        acc_x = data.acceleration.x
        acc_y = data.acceleration.y
        acc_z = data.acceleration.z

        pos_x = data.position.x
        pos_y = data.position.y
        pos_z = data.position.z

        vel_x = data.velocity.x
        vel_y = data.velocity.y
        vel_z = data.velocity.z

        heading = data.heading
        accel = data.accel
        brake = data.brake
        angle = data.wheel_angle

        custom_Ego = EgoVehicleStatus()
        custom_Ego.header = data.header
        custom_Ego_speed = Float64()
        custom_Ego_position = Float64()

    def speed_callback(self, data):
        _speed = data.state.speed
        if _speed < 2000:
            self.cmd_speed += 1
        else:
            self.cmd_speed -= 1
        _Ego_speed = Float64()
        _Ego_speed.data = self.cmd_speed
        self.pubEgo_speed.publish(_Ego_speed.data)

    def angle_callback(self, data):
        _angle = data.data
        now_angle = ((_angle * 2) - 1) * 19
        if now_angle < 10:
            self.cmd_angle = 15 / 19
        _Ego_angle = Float64()
        _Ego_angle.data = self.cmd_angle
        self.pubEgo_angle.publish(_Ego_angle.data)

    def Ego_shutdown(self):
        print("I'm dead!")
        self.f.close()
        custom_Ego_speed = 0
        custom_Ego_position = 0
        self.pubEgo_speed.publish(custom_Ego_speed)
        self.pubEgo_angle.publish(custom_Ego_position)


if __name__ == "__main__":

    ER = EgoReceiver()
