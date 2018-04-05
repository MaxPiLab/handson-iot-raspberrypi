import RPi.GPIO as GPIO
import time

GPIO.setwarnings(False) #Disable any warning message such as GPIO pins in use

GPIO.setmode(GPIO.BCM)
GPIO.setup(18, GPIO.OUT)
p = GPIO.PWM(18, 50)

def reading(sensor):
	if sensor == 0:
		GPIO.setup(17,GPIO.OUT)
		GPIO.setup(27,GPIO.IN)
		GPIO.output(17, GPIO.LOW)
		
		time.sleep(0.2)
		GPIO.output(17, True)
		time.sleep(0.00001)
		GPIO.output(17, False)

		while GPIO.input(27) == 0:
		  signaloff = time.time()
		
		while GPIO.input(27) == 1:
		  signalon = time.time()
		timepassed = signalon - signaloff
		distance = timepassed * 17000
		return distance
	else:
		print ("Incorrect usonic() function varible.")

while 1:
        print("The vehicle is %.2f" %reading(0),"cms away")
        if (reading(0) < 5):
                p.ChangeDutyCycle(2.5)
                print("The Gate is OPEN")
                time.sleep(2)
        else:
                
                p.start(7.5)
                p.ChangeDutyCycle(7.5)
                print("The Gate is CLOSED")
                time.sleep(0.5)      
                

