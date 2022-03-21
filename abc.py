import cv2
import os

#camera = cv2.VideoCapture("nvarguscamerasrc ! video/x-raw(memory:NVMM) ! nvvidconv ! video/x-raw ! jpegenc ! image/jpeg ! appsink", cv2.CAP_GSTREAMER)

camera = cv2.VideoCapture("nvarguscamerasrc ! video/x-raw(memory:NVMM), width=1280, height=720, format=NV12, framerate=30/1 ! nvvidconv ! video/x-raw, width=1080, height=768, format=BGRx ! videoconvert ! video/x-raw, format=BGR ! appsink drop=1", cv2.CAP_GSTREAMER)
cv2.waitKey(1000)
ret, frame = camera.read()
assert ret
path1 = '/home/avadhesh/thesis'
iswritten = cv2.imwrite('/home/avadhesh/thesis/test.jpg', frame)

frame = cv2.resize(frame, (200,66))
print(frame.shape)

if not ret:
    stop('camera not connected')

if not iswritten:
    print("Image not written")
cv2.waitKey(1000)
