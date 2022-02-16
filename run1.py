import time
from adafruit_motorkit import MotorKit

kit = MotorKit()

kit.motor1.throttle = 0.7 
kit.motor2.throttle = 0.7
kit.motor3.throttle = 0.7
kit.motor4.throttle = 0.7

time.sleep(1)

kit.motor1.throttle = 0
kit.motor2.throttle = 0
kit.motor3.throttle = 0
kit.motor4.throttle = 0

kit.motor1.throttle = 0.7
#kit.motor2.throttle = 0.2
kit.motor3.throttle = 0.7
#kit.motor4.throttle = 0.2

time.sleep(0.6)

kit.motor1.throttle = 0.7
kit.motor2.throttle = 0.7
kit.motor3.throttle = 0.7
kit.motor4.throttle = 0.7

time.sleep(2)

kit.motor1.throttle = 0
kit.motor2.throttle = 0
kit.motor3.throttle = 0
kit.motor4.throttle = 0

#kit.motor1.throttle = 0.2
kit.motor2.throttle = 0.7
#kit.motor3.throttle = 0.2
kit.motor4.throttle = 0.7

time.sleep(0.6)

kit.motor1.throttle = 0.7
kit.motor2.throttle = 0.7
kit.motor3.throttle = 0.7
kit.motor4.throttle = 0.7

time.sleep(1)

kit.motor1.throttle = 0
kit.motor2.throttle = 0
kit.motor3.throttle = 0
kit.motor4.throttle = 0

