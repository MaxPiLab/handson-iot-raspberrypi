# The messages sent from Arduino can be displayed on the Pi by using the following code

import serial

ser = serial.Serial('/dev/ttyACM0',timeout = 2)
# The text '/dev/ttyACM0' should match the Serial port that the Arduino IDE shows.
# If the program shows error then you have the wrong serial port

while 1:
    line = ser.readline()
    print(line)

