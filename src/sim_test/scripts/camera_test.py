#!/usr/bin/env python

import rospy
import cv2
import numpy as np
from sensor_msgs.msg import Image, CompressedImage


class IMGParser:
    def __init__(self):
        rospy.init_node("camera", anonymous=True)
        self.image_sub = rospy.Subscriber(
            "/image_jpeg/compressed", CompressedImage, self.callback
        )
        rospy.spin()

    def canny(self, img):
        img_gray = cv2.cvtColor(img, cv2.COLOR_RGB2GRAY)
        img_blur = cv2.GaussianBlur(img_gray, (3, 3), 0)
        img_canny = cv2.Canny(img_blur, 50, 200)
        return img_canny

    def roi(self, img):
        mask = np.zeros_like(img)
        # height, width = img.shape
        ignore_mask_color = 255
        # vertices=np.array([[(0,480),(0,300), (75,265), (565,265), (640,300), (640,480)]], dtype=np.int32)
        # vertices=np.array([[(50, 480), (220,360), (420,360), (590, 480)]], dtype=np.int32)
        vertices = np.array(
            [[(0, 480), (0, 270), (220, 220), (420, 220), (640, 270), (640, 480)]],
            dtype=np.int32,
        )
        cv2.fillPoly(mask, vertices, ignore_mask_color)
        masked_img = cv2.bitwise_and(img, mask)
        return masked_img

    def avg_slope(self, lines):
        left_line_x = []
        left_line_y = []
        right_line_x = []
        right_line_y = []

        for line in lines:
            if line[0][1] <= line[0][3]:  # slope>0, right line
                # right_line_x.append(line[0][0])
                # right_line_x.append(line[0][2])
                right_line_x = np.append(right_line_x, [line[0][0], line[0][2]])
                right_line_y = np.append(right_line_y, [line[0][1], line[0][3]])
            else:
                left_line_x = np.append(left_line_x, [line[0][0], line[0][2]])
                left_line_y = np.append(left_line_y, [line[0][1], line[0][3]])

        if len(right_line_x) != 0 and len(left_line_x) != 0:
            right_line_param = np.polyfit(right_line_x, right_line_y, 1)
            left_line_param = np.polyfit(left_line_x, left_line_y, 1)

            x_intersect = (left_line_param[1] - right_line_param[1]) / (
                right_line_param[0] - left_line_param[0]
            )
            y_intersect = left_line_param[0] * x_intersect + left_line_param[1]

            right_line = np.array(
                [
                    x_intersect,
                    y_intersect,
                    (480 - right_line_param[1]) / right_line_param[0],
                    480,
                ]
            ).astype("int32")
            left_line = np.array(
                [
                    x_intersect,
                    y_intersect,
                    (480 - left_line_param[1]) / left_line_param[0],
                    480,
                ]
            ).astype("int32")
            result = np.vstack((right_line, left_line))
            return result
        else:
            return None

    def draw_line(
        self, img, img_raw, rho, theta, threshold, min_line_len, max_line_gap
    ):
        lines = cv2.HoughLinesP(
            img,
            rho,
            theta,
            threshold,
            np.array([]),
            minLineLength=min_line_len,
            maxLineGap=max_line_gap,
        )
        # print(lines)
        # print(np.shape(lines))
        # print(np.shape(lines1))
        lines_image = np.zeros_like(img_raw)

        if lines is not None:
            if self.avg_slope(lines) is not None:
                lines1 = self.avg_slope(lines).reshape(2, 1, 4)
                for i in range(len(lines1)):
                    for x1, y1, x2, y2 in lines1[i]:
                        cv2.line(lines_image, (x1, y1), (x2, y2), (255, 0, 0), 10)
        return lines_image

    def callback(self, data):
        np_arr = np.fromstring(data.data, np.uint8)  # string to ndarray
        img_bgr = cv2.imdecode(np_arr, cv2.IMREAD_COLOR)
        img_canny = self.canny(img_bgr)
        img_masked = self.roi(img_canny)
        img_line = self.draw_line(img_masked, img_bgr, 2, np.pi / 180, 80, 120, 200)
        img_final = cv2.addWeighted(img_bgr, 0.8, img_line, 1, 1)
        cv2.imshow("Image window", img_final)
        cv2.waitKey(1)


if __name__ == "__main__":
    try:
        image_parser = IMGParser()
    except rospy.ROSInterruptException:
        pass
