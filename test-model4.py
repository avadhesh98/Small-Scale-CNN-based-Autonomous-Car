#!/usr/bin/env python 
from __future__ import division

import tensorflow as tf
import params
from adafruit_motorkit import MotorKit
model = __import__(params.model)
import cv2
import subprocess as sp
import itertools
import sys
import os
import preprocess
# import visualize
import time
import math
import numpy as np
import local_common as cm

def deg2rad(deg):
        return deg * math.pi / 180.0
def rad2deg(rad):
        return 180.0 * rad / math.pi

NCPU=int(sys.argv[1])
config = tf.compat.v1.ConfigProto(intra_op_parallelism_threads=NCPU, inter_op_parallelism_threads=NCPU, \
                        allow_soft_placement=True, device_count = {'CPU': 1})
# sess = tf.Session(config=config)

NFRAMES = 1000

sess = tf.compat.v1.InteractiveSession(config=config)
saver = tf.compat.v1.train.Saver()
model_load_path = cm.jn(params.save_dir, params.model_load_file4)
saver.restore(sess, model_load_path)

epoch_ids = sorted(list(set(itertools.chain(*params.epochs.values()))))
print(epoch_ids)

tot_time_list = []

gst_str = "nvarguscamerasrc ! video/x-raw(memory:NVMM), width=1280, height=720, format=NV12, framerate=30/1 ! nvvidconv ! video/x-raw, width=1024, height=768, format=BGRx ! videoconvert ! video/x-raw, format=BGR ! appsink drop=1"

curFrame = 0
for epoch_id in epoch_ids:
    print ('---------- processing video for epoch {} ----------'.format(epoch_id))
    # vid_path = cm.jn(params.data_dir, 'epoch{:0>2}_front.mkv'.format(epoch_id))

    vid_path = cm.jn(params.data_dir, 'out-video-{}.avi'.format(epoch_id))
    assert os.path.isfile(vid_path)
    frame_count = cm.frame_count(vid_path)
    cap = cv2.VideoCapture(gst_str, cv2.CAP_GSTREAMER)

    machine_steering = []
    kit = MotorKit()
    print ('performing inference...')
    time_start = time.time()
    for frame_id in range(frame_count):
        if curFrame < NFRAMES:
            #cv2.waitKey(100)
            cam_start = time.time()
            ret, img = cap.read()
            assert ret
            print(img.shape)
            #cv2.imshow('captured',img)
            confirm = cv2.imwrite('/home/avadhesh/thesis/test.jpg', img);

            prep_start = time.time()
            img = preprocess.preprocess(img)
            print(img.shape)

            pred_start = time.time()
            rad = model.y.eval(feed_dict={model.x: [img]})[0][0]
            deg = rad2deg(rad)
            pred_end   = time.time()

 #          if ((deg>-10) and (deg<=15)):
 #              # deg = 0
 #              kit.motor1.throttle = 0.5 
 #              kit.motor2.throttle = 0.5
 #              kit.motor3.throttle = 0.5
 #              kit.motor4.throttle = 0.5
 #          elif(deg<-10):
 #              # deg = -30
 #              kit.motor1.throttle = 0 
 #              kit.motor2.throttle = 0
 #              kit.motor3.throttle = 0
 #              kit.motor4.throttle = 0
 #          elif(deg>15):
 #              # deg = 30
 #              kit.motor1.throttle = 0 
 #              kit.motor2.throttle = 0
 #              kit.motor3.throttle = 0
 #              kit.motor4.throttle = 0
            cam_time  = (prep_start - cam_start)*1000
            prep_time = (pred_start - prep_start)*1000
            pred_time = (pred_end - pred_start)*1000
            tot_time  = (pred_end - cam_start)*1000

            print ('pred: {:0.2f} deg. took: {:0.2f} ms | cam={:0.2f} prep={:0.2f} pred={:0.2f}'.format(deg, tot_time, cam_time, prep_time, pred_time))
            # print 'pred: {} deg (rad={})'.format(deg, rad)
            if frame_id > 0:
                tot_time_list.append(tot_time)
                machine_steering.append(deg)
                curFrame += 1

    cap.release()

    fps = frame_count / (time.time() - time_start)
    
    print ('completed inference, total frames: {}, average fps: {} Hz'.format(frame_count, round(fps, 1)))

    # print "Machine Steering:", machine_steering

    # print 'performing visualization...'
    # visualize.visualize(epoch_id, machine_steering, params.out_dir,
    #                     verbose=True, frame_count_limit=None)
kit.motor1.throttle = 0
kit.motor2.throttle = 0
kit.motor3.throttle = 0
kit.motor4.throttle = 0    
print ("count:", len(tot_time_list))
print ("mean:", np.mean(tot_time_list))
print ("max:", np.max(tot_time_list))
print ("99.999pct:", np.percentile(tot_time_list, 99.999))
print ("99.99pct:", np.percentile(tot_time_list, 99.99))
print ("99.9pct:", np.percentile(tot_time_list, 99.9))
print ("99pct:", np.percentile(tot_time_list, 99))
print ("min:", np.min(tot_time_list))
print ("median:", np.median(tot_time_list))
print ("stdev:", np.std(tot_time_list))    
