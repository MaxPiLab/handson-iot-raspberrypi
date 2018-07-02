### RAIN ALERT SYSTEM ###

#Import the required libraries
from time import sleep
from gpiozero import Buzzer, InputDevice
 
buzz    = Buzzer(13)        # Buzzer at GPIO 13
no_rain = InputDevice(18)   # Digital pin at GPIO 18
 
def buzz_now(iterations):        # User Defined Function with one argument
    for x in range(iterations):  # For loop for the buzzer to buzz
        buzz.on()
        sleep(0.1)
        buzz.off()
        sleep(0.1)
 
while True:                                 # Loop Forever
    if not no_rain.is_active:               # HIGH = no rain, LOW = rain detected
        print("It's raining - Get Inside")  # Print the message on the screen
        buzz_now(3)                         # Buzz for 3 times
    sleep(1)
