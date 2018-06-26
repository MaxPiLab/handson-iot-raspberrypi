#YF-S201 Water Flow Meter

#Import all the required libraries
import RPi.GPIO as GPIO                 
import time                             
import sys

GPIO.setmode(GPIO.BCM)      #GPIO Broadcom numbering
inpt = 17                   #Set input pin
GPIO.setup(inpt, GPIO.IN)   #Set inpt pin as input
rate_cnt = 0                #Count for Liters/min
tot_cnt = 0                 #Count for Total Liters 
minutes = 0                 #Total Minutes
constant = 0.10             #Convert pulses to liters
time_new = 0.0              #Keep next time

print("Approximate Water Flow")
print("ctrl+c to exit")

while True:
    time_new = time.time() + 10     #+60 - for real life usage
    rate_cnt = 0                    #Reset flow rate counter
    while time.time() <= time_new:
        if GPIO.input(inpt) != 0:   #Look for pulses
            rate_cnt += 1           #Pulses per time
            tot_cnt += 1            #Total pulses
        try:
            print(GPIO.input(inpt) , end = ' ') #Status Indicator 
        except KeyboardInterrupt:               #Look for Exit command
            print("\nAbort by user")
            GPIO.cleanup()                      #Clean up GPIO pins
            sys.exit()                          #Exit Nicely
    minutes += 1                                #Increment total minutes
    print('\n\nLiters per min ', round(rate_cnt*constant,4))
    print('Total Liters', round(tot_cnt*constant,4))
    print('Time (min & clock)', minutes, '\t', time.asctime(time.localtime()))

GPIO.cleanup()
print('done')
            
