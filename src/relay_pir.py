#Smart Lights using Relay and PIR sensor

import RPi.GPIO as GPIO
import time
GPIO.setmode(GPIO.BCM)
PIR_PIN=23
GPIOPIN = 24
GPIO.setup(PIR_PIN, GPIO.IN)

try:
    print ("PIR Module Test (CTRL+C to exit)")
    print ("Ready")
    time.sleep(2)
    while True:
        if GPIO.input(PIR_PIN):
            print ("Motion Detected!")
            GPIO.setup(GPIOPIN, GPIO.OUT)
            time.sleep(2)
except KeyboardInterrupt:
               print ("Quit")
               GPIO.cleanup()


