import RPi.GPIO as GPIO
import time 
import sys
from pubnub import Pubnub

GPIO.setmode (GPIO.BCM)
LIGHT = 4;
GPIO.setup(LIGHT,GPIO.OUT)

pubnub = Pubnub(publish_key='pub-c-7d635ffa-d57a-47f2-b400-817dd3816e6d',subscribe_key='sub-c-bcc1aed0-36eb-11e8-a218-f214888d2de6')
channel = 'LedControl'

def callback(m, channel):
	if m['light'] == 'on'
		GPIO.output(LIGHT,True)
		time.sleep(0.5)
	if m['light'] == 'off'
		GPIO.output(LIGHT,False)
		time.sleep(0.5)
pubnub.subscribe(channel , callback=callback, error=callback)

GPIO.cleanup()
sys.exit()
