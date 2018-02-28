## ULTRASONIC SENSOR
Ultrasonic sensors (also known as transceivers when they both send and receive, but more generally called transducers) work on a principle similar to radar or sonar which evaluate attributes of a target by interpreting the echoes from radio or sound waves respectively. Ultrasonic sensors generate high frequency sound waves and evaluate the echo which is received back by the sensor. Sensors calculate the time interval between sending the signal and receiving the echo to determine the distance to an object.

<img src="https://github.com/11RO05/handson-iot-raspberrypi/blob/master/images/Ultrasonic%20Sensor%201.png">

This technology can be used for measuring wind speed and direction (anemometer), tank or channel level, and speed through air or water. For measuring speed or direction a device uses multiple detectors and calculates the speed from the relative distances to particulars in the air or water. To measure tank or channel level, the sensor measures the distance to the surface of the fluid. Further applications include: humidifiers, sonar, medical, ultrasonography, burglar alarms and non-destructive testing.

<img src="https://github.com/11RO05/handson-iot-raspberrypi/blob/master/images/Ultrasonic%20Sensor.png">

Systems typically use a transducer which generates sound waves in the ultrasonic range, above 18000 Hz by turning electrical energy into sound, then upon receiving the echo turn the sound waves into electrical energy which can be measured and displayed.

The technology is limited by the shapes of surfaces and the density ot consistency of the material. Foam, in particular, can distort surface level readings.

### THINGS USED IN THIS PROJECT

#### HARDWARE COMPONENTS
1.	Raspberry Pi 3 (Model B)		**X1**
2.	Breadboard				**X1**
3.	Jumper Wires (Male to Female)	**X6**
4.	Ultrasonic Sensor (HCSR04)		**X1**
5.	Resistor (1KΩ)				**X1**

#### SOFTWARE COMPONENTS
1.	Python 3.5 (IDLE)

### STORY
In this project we will be measuring the distance of a particular object using the **Ultrasonic Sensor**. The ultrasonic sensor emits an ultrasound at approximately 40 KHz which travels through the air and if there is an object or obstacle on its path it will bounce back to the module. Considering the travel time and the speed of the sound you can calculate the distance. In order to generate the ultrasound you need to set the Trig on a high state for 10µs. That will send out an 8 cycle sonic burst which will travel at the speed sound and it will be received in the Echo pin. The Echo pin will output the time in microseconds the sound wave travelled. The connections are made as per the circuit diagram. The HC-SR04 Ultrasonic module consists of 4 pins namely VCC (supply), Trig, Echo, and Ground. The Ground is connected to PIN 6 (Ground) of the Pi through the breadboard and VCC is connected to PIN 2 (5V Power). The trigger is directly connected to PIN 11 (GPIO 17). *the trigger can be connected to any of the GPIO pins available*. The sensor sends out a voltage value of 5V which is high for the Pi through a resistor the Echo is connected to PIN 13 (GPIO 27). The resistor is used in order to limit the current flow from the sensor to the Pi. If the pin is left unprotected (connected without resistor) then it can damage the GPIO pin of the Pi.

![](https://github.com/11RO05/handson-iot-raspberrypi/blob/master/circuit-diagram/Ultrasonic%20Sensor.png)

### INSTRUCTIONS

#### Setting up the Hardware Part
1.	Insert the Micro SD card containing the Raspbian OS into the Raspberry Pi 3. (The slot for the Micro SD is at the bottom of the Pi.)
1.	Connect the Raspberry Pi 3 to a monitor (output device) with the help of a HDMI cable. (If your monitor is VGA type then you should have a HDMI to VGA converter.) 
2.	Connect the mouse and keyboard (input devices) in the USB slots provided (4 slots)
3.	Power up the Pi by connecting it to a power supply and wait for the Raspbian OS to load (This may take some time)
4.	Make the connections as per the circuit diagrams. (You can make the connections before connecting the input and output devices as well)

 #### Running the Program / Measuring the distance
1.	Open the terminal and go to the required directory by using the command **cd path_of_the_directory** (example:- **cd Desktop** - *Changes the directory to Desktop*)
2.	Create a new python file in the required directory by typing **nano file_name.py** (giving the extension **.py** tells the terminal to create a python file) 
3.	When a new terminal opens, copy and paste the program code in the file_name.py and save it by using **ctrl x** and then pressing **Y** when prompted.
4.	Keep an object in front of the sensor for the sound waves to bounce back or echo
5.	To run the program use the command **python file_name.py**
6.	The distance between the object and the ultrasonic sensor is calculated and displayed on the screen.

