#!/usr/bin/env python

import rospy
import cv2
import numpy as np
from sensor_msgs.msg import Image, CompressedImage

class IMGParser:
    def __init__(self):
        rospy.init_node('camera', anonymous=True)
    
        self.image_sub = rospy.Subscriber("/image_jpeg/compressed", CompressedImage, self.callback)

        rospy.spin()

    def grayscale(self, img):
        return cv2.cvtColor(img, cv2.COLOR_RGB2GRAY)
    
    def gaussian_blur(self, img, kerenl_size):
        return cv2.GaussianBlur(img, (kerenl_size, kerenl_size),0)
    
    def canny(self, img, low_threshold, high_threshold):
        return cv2.Canny(img, low_threshold, high_threshold)
    
    def roi(self, img):
        mask=np.zeros_like(img)
        if len(img.shape)>2:
            channel_count=img.shape[2]
            ignore_mask_color=(255,)*channel_count
        else: 
            ignore_mask_color=255
        vertices=np.array([[(0,480),(0,300), (75,265), (565,265), (640,300), (640,480)]], dtype=np.int32)
        cv2.fillPoly(mask, vertices, ignore_mask_color)
        masked_img=cv2.bitwise_and(img, mask)
        return masked_img

    def callback(self, data):
        np_arr = np.fromstring(data.data, np.uint8)
        img_bgr = cv2.imdecode(np_arr, cv2.IMREAD_COLOR)
        img_gray = self.grayscale(img_bgr)
        #
        img_gau=self.gaussian_blur(img_gray, 5)
        img_canny=self.canny(img_gau, 50, 200)
        img_masked=self.roi(img_canny)

        cv2.imshow("Image window", img_masked)
        cv2.waitKey(1)
        
        
if __name__ == '__main__':
    try:
        image_parser = IMGParser()
    except rospy.ROSInterruptException:
        pass