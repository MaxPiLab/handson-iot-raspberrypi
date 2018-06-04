import RPi.GPIO as GPIO
from time import sleep

GPIO.setmode(GPIO.BOARD)
GPIO.setwarnings(False)

MATRIX =[ [1,2,3,'A'],
          [4,5,6,'B'],
          [7,8,9,'C'],
          ['*',0,'#','D'] ]

# These are the physical pin numbers of the raspberry pi
ROW = [37,35,33,31] 
COL = [8,10,12,16]

for j in range(4):
    GPIO.setup(COL[j], GPIO.OUT)
    GPIO.output(COL[j], 1)

for i in range(4):
    GPIO.setup(ROW[i], GPIO.IN, pull_up_down = GPIO.PUD_UP)
    sleep(0.5)
    
try:
    while(True):
        for j in range(4):
            GPIO.output(COL[j],0)

            for i in range(4):
                if GPIO.input(ROW[i]) == 0:
                    print (MATRIX[i][j])
                    sleep(0.1)
                    while(GPIO.input(ROW[i]) == 0):
                            pass
            GPIO.output(COL[j],1)


except KeyboardInterrupt:
    GPIO.cleanup()
