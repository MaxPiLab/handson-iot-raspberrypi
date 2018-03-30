import RPi.GPIO as GPIO
import lcddriver
import time


GPIO.setwarnings(False)
GPIO.setmode(GPIO.BCM)
GPIO.setup(18,GPIO.OUT)

# Load the driver and set it to "display"
# If you use something from the driver library use the "display." prefix first
display = lcddriver.lcd()

def reading(sensor):
    
    if sensor == 0:
        GPIO.setup(17,GPIO.OUT)
        GPIO.setup(27,GPIO.IN)
        GPIO.output(17, GPIO.LOW)
        time.sleep(0.00001)
        GPIO.output(17, True)
        time.sleep(0.2)
        GPIO.output(17, False)
        while GPIO.input(27) == 0:
            signaloff = time.time()
        while GPIO.input(27) == 1:
            signalon = time.time()
        timepassed = signalon - signaloff
        distance = timepassed * 17000
        return distance
    else:
        print("Invalid Function")
print("The distance in centimeter is :")
while 1:
    print(reading(0))
    if (reading(0) < 5):
        display.lcd_display_string("ALERT! VEHICLE",1) # Write line of text to first line of display
        display.lcd_display_string("TOO CLOSE",2) # Write line of text to second line of display
        GPIO.output(18,GPIO.HIGH)
    elif (reading(0) > 5):
        display.lcd_clear() 
        GPIO.output(18,GPIO.LOW)
    time.sleep(2)

