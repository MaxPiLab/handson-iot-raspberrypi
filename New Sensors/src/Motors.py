## Controlling 2 DC Motors

# Import the required libraries
import RPi.GPIO as GPIO
from time import sleep
 
GPIO.setmode(GPIO.BOARD)    # Numbering using the PIN number of GPIO
 
# Pin allotment for the first motor
Motor1A = 16            
Motor1B = 18
Motor1E = 22

# Pin allotment for the second motor 
Motor2A = 23
Motor2B = 21
Motor2E = 19
 
# Setting the alloted pins as output pins
GPIO.setup(Motor1A,GPIO.OUT)
GPIO.setup(Motor1B,GPIO.OUT)
GPIO.setup(Motor1E,GPIO.OUT)
 
GPIO.setup(Motor2A,GPIO.OUT)
GPIO.setup(Motor2B,GPIO.OUT)
GPIO.setup(Motor2E,GPIO.OUT)

print ("Rotating in Anti-Clockwise Direction")
GPIO.output(Motor1A,GPIO.HIGH)
GPIO.output(Motor1B,GPIO.LOW)
GPIO.output(Motor1E,GPIO.HIGH)
 
GPIO.output(Motor2A,GPIO.HIGH)
GPIO.output(Motor2B,GPIO.LOW)
GPIO.output(Motor2E,GPIO.HIGH)
 
sleep(10)           ## Rotating for a total of 10 seconds

print ("Rotating in Clockwise Direction")
GPIO.output(Motor1A,GPIO.LOW)
GPIO.output(Motor1B,GPIO.HIGH)
GPIO.output(Motor1E,GPIO.HIGH)
 
GPIO.output(Motor2A,GPIO.LOW)
GPIO.output(Motor2B,GPIO.HIGH)
GPIO.output(Motor2E,GPIO.HIGH)
 
sleep(10)           ## Rotating for a total of 10 seconds
 
print ("Stopping the two motors")
GPIO.output(Motor1E,GPIO.LOW)
GPIO.output(Motor2E,GPIO.LOW)
 
GPIO.cleanup()      ## Cleaning the GPIO pins used 
