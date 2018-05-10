import RPi.GPIO as GPIO
from time import sleep

channel = 21
GPIO.setmode(GPIO.BCM)
GPIO.setup(channel, GPIO.IN)

def callback(channel):
    if GPIO.input(channel):
        print("No water detected")
    else:
        print("Water Detected")


GPIO.add_event_detect(channel, GPIO.BOTH, bouncetime=300) #Let us know when the pin goes HIGH or LOW
GPIO.add_event_callback(channel, callback) # Assign function to GPIO PIN, Run function on change

while True:
    sleep(1)
