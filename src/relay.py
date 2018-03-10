import RPi.GPIO as GPIO
from time import sleep

GPIO.setmode(GPIO.BCM)
GPIOPIN=24

try:
    GPIO.setup(GPIOPIN,GPIO.OUT)
    print("The Relay is ON")
    sleep(3)
    GPIO.setup(GPIOPIN,GPIO.LOW)
    print("The Relay is OFF")

finally:
    GPIO.cleanup()
