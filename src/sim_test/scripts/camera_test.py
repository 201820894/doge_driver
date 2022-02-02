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

    def canny(self, img):
        img_gray=cv2.cvtColor(img, cv2.COLOR_RGB2GRAY)
        img_blur=cv2.GaussianBlur(img_gray, (3, 3),0)
        img_canny=cv2.Canny(img_blur, 50, 200)
        return img_canny

    def roi(self, img):
        mask=np.zeros_like(img)
        
        ignore_mask_color=255
        vertices=np.array([[(0,480),(0,300), (75,265), (565,265), (640,300), (640,480)]], dtype=np.int32)
        cv2.fillPoly(mask, vertices, ignore_mask_color)
        masked_img=cv2.bitwise_and(img, mask)
        return masked_img
    """
    def make_coordinates(self, image, line_parameters):
        slope, intercept = line_parameters
        y1 = image.shape[0]
        y2 = int(y1*(3/5))
        x1 = int((y1- intercept)/slope)
        x2 = int((y2 - intercept)/slope)
        return np.array([x1, y1, x2, y2])
    

    def average_slope_intercept(self, image, lines):
        left_fit = []
        right_fit = []
        for line in lines:
            x1, y1, x2, y2 = line.reshape(4)
            parameter = np.polyfit((x1, x2), (y1, y2), 1)
            slope = parameter[0]
            intercept = parameter[1]
            if slope < 0:
                left_fit.append((slope, intercept))
            else:
                right_fit.append((slope, intercept))
        left_fit_average =np.average(left_fit, axis=0)
        right_fit_average = np.average(right_fit, axis =0)
        left_line =self.make_coordinates(image, left_fit_average)
        right_line = self.make_coordinates(image, right_fit_average)
        return np.array([[left_line, right_line]])
        """
        
    
    def draw_line(self, img, rho, theta, threshold, min_line_len, max_line_gap):
        lines=cv2.HoughLinesP(img, rho, theta, threshold, np.array([]), minLineLength=min_line_len, maxLineGap=max_line_gap)
        #lines=self.average_slope_intercept(img, lines)
        line_img=np.zeros((img.shape[0], img.shape[1], 3), dtype=np.uint8)
        if np.shape(lines)[0]!=0:
            for line in lines:
                for x1, y1, x2, y2 in line:
                    cv2.line(line_img, (x1, y1), (x2, y2), [0,0,255], 5)
            print(np.shape(lines))
            return line_img



    def callback(self, data):
        np_arr = np.fromstring(data.data, np.uint8)
        img_bgr = cv2.imdecode(np_arr, cv2.IMREAD_COLOR)
        img_canny=self.canny(img_bgr)
        img_masked=self.roi(img_canny)
        img_line=self.draw_line(img_masked, 2, np.pi/180, 120, 120, 30)
        img_final=cv2.addWeighted(img_bgr, 0.8, img_line, 1,0)
        cv2.imshow("Image window", img_final)
        cv2.waitKey(1)
        
        
if __name__ == '__main__':
    try:
        image_parser = IMGParser()
    except rospy.ROSInterruptException:
        pass