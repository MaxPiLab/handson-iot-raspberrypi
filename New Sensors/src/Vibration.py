import RPi.GPIO as GPIO
import time

channel = 17
GPIO.setmode(GPIO.BCM)
GPIO.setup(channel, GPIO.IN)
GPIO.setwarnings(False)

def callback(channel):
    if GPIO.input(channel):
        print ("Vibration Detected")
    else:
        print ("Vibration Detected")

GPIO.add_event_detect(channel, GPIO.BOTH, bouncetime = 300)
GPIO.add_event_callback(channel, callback)

while 1:
    time.sleep(1)
