import RPi.GPIO as GPIO  #Calling for header file which helps us use GPIO's of Pi
from time import sleep  #calling sleep from time to provide delays in program    
 
#String of characters storing port values for each digit
DISPLAY = [0x3F,0x06,0x5B,0x4F,0x66,0x6D,0x7D,0x07,0x7F,0x67]   

GPIO.setwarnings(False)
GPIO.setmode(GPIO.BCM)

#List of variables for the segment ports
#This is equivalent to (a,b,c,d,e,f,g,h) i.e a=13,b=6 and so on
segments = (13,6,16,20,21,19,26,12)

#initializing the segment ports to output at 0
GPIO.setup(segments, GPIO.OUT, initial=0)   

def PORT(pin):                  #Assigning GPIO logic by taking 'pin' value
    if(pin&0x01 == 0x01):
        GPIO.output(13,0)       #if bit0 of bit8 is true, pull PIN13 low
    else:
        GPIO.output(13,1)       #if bit0 of bit8 is false, pull PIN13 high

    if(pin&0x02 == 0x02):
        GPIO.output(6,0)
    else:
        GPIO.output(6,1)

    if(pin&0x04 == 0x04):
        GPIO.output(16,0)
    else:
        GPIO.output(16,1)

    if(pin&0x08 == 0x08):
        GPIO.output(20,0)
    else:
        GPIO.output(20,1)

    if(pin&0x10 == 0x10):
        GPIO.output(21,0)
    else:
        GPIO.output(21,1)

    if(pin&0x20 == 0x20):
        GPIO.output(19,0)
    else:
        GPIO.output(19,1)

    if(pin&0x40 == 0x40):
        GPIO.output(26,0)
    else:
        GPIO.output(26,1)

    if(pin&0x80 == 0x80):
        GPIO.output(12,0)
    else:
        GPIO.output(12,1)

try:
    while 1:    
        for x in range(10):         #Execute the loop ten times for incrementing x from 0-9
                pin = DISPLAY[x]    # assigning value to pin for each digit
                PORT(pin)           #Calling the function port
                sleep(0.5)            #Providing a delay of 0.5 sec

except KeyboardInterrupt:
    GPIO.cleanup()                  #Cleaning up the GPIO pins

