import numpy as np 
import cv2

img=np.zeros((512,512, 3), np.uint8)
img=cv2.rectangle(img,(384,0),(510,128),(255,0,0),3)
cv2.imshow('res', img)
cv2.waitKey(0)
cv2.destroyAllWindows