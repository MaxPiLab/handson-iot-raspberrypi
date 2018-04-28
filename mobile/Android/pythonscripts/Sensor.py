from Pubnub import Pubnub 
import RPi.GPIO as GPIO
import time
import sys

loopcount = 0

pubnub = Pubnub(publish_key='pub-c-9710b97d-1b82-4e19-8508-ef27b1bf9fde', subscribe_key='sub-c-18528260-3ca5-11e8-a433-9e6b275e7b64')
channel = 'Rangefinder'

GPIO.setmode(GPIO.BCM)
TRIG = 20
ECHO = 26

GPIO.setup(TRIG,GPIO.OUT)
GPIO.setup(ECHO,GPIO.IN)

GPIO.output(TRIG,False)
time.sleep(2)

pubnub.subscribe(channel, callback=callback, error=callback)
def callback(m, channel):
        if m['getDistance'] == 'on'
	while True:
                GPIO.output(TRIG,True)
                time.sleep(0.00001)
                GPIO.output(TRIG,False)
	pulse_start = time.time()
	while GPIO.input(ECHO)==0:
		pulse_start = time.time()
	while GPIO.input(ECHO)==1:
		pulse_end = time.time()
	pulse_duration = pulse_end - pulse_start
	distance = round(distance, 2)
	loopcount=+=1
	message =  {"Distance": distance}

	pubnub.publish(channel, message)
	time.sleep(1)
GPIO.cleanup()
sys.exit()
	
