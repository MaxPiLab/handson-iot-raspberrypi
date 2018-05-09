## Soil Moisture Sensor
Soil moisture sensors measure the volumetric water content in soil. Since the direct gravimetric measurement of free soil moisture requires removing, drying, and weighting of a sample, soil moisture sensors measure the volumetric water content indirectly by using some other property of the soil, such as electrical resistance, dielectric constant, or interaction with neutrons, as a proxy for the moisture content. The relation between the measured property and soil moisture must be calibrated and may vary depending on environmental factors such as soil type, temperature, or electric conductivity. Reflected microwave radiation is affected by the soil moisture and is used for sensing in hydrology and agriculture. Portable probe instruments can be used by farmers or gardeners.

![](https://github.com/11RO05/handson-iot-raspberrypi/blob/master/New%20Sensors/Images/Soil%20Moisture%20Sensor.png)

Soil moisture sensors typically refer to sensors that estimate volumetric water content. Another class of sensors measure another property of moisture in soils called water potential. These sensors are usually referred to as soil water potential sensors and include tensiometers and gypsum blocks.

### THINGS USED IN THIS PROJECT

#### HARDWARE COMPONENTS
1.	Raspberry Pi	**X1**
2.	Soil Moisture Sensor with A-D breakout board	**X1**
3.	Female to Female Jumper wires	**X5**

#### SOFTWARE COMPONENTS
1.	Python 3.5 (IDLE)

### STORY
In this project we will be integrating the Soil Moisture Sensor with the Raspberry Pi. To connect the sensor to the Pi an Analog to Digital conversion is required as the sensor produces analog output. To convert the Analog to Digital we use a breakout board which comes along with the sensor. There are 5 connections that are to be made. 3 connections are to the Pi and the other 2 are to the soil sensor. The Analog to digital (A-D) breakout board converts the analog output of the sensor to digital for the pi to understand it. So we have to connect the digital pin i.e. D0 to the GPIO of the raspberry pi. The pin A0 is kept open as we are not using it for this project. The sensitivity of the sensor can be changed by varying the potentiometer present on the A-D breakout board. The connections are made as follows:
•	Vcc – 5V
•	Gnd – Ground
•	Signal (D0) – GPIO 21

When the connections are made and the Pi is powered up, a red light on the A-D breakout board turns on indicating that the board is ready to be used. For testing purposes take the sensor and dip it in water. When around half of the sensor is in the water another light on the breakout board turns on indicating the presence of water. To check the presence of moisture in the soil insert the sensor (about 3/4th of the sensor) into the soil and find out whether moisture is present or not. 

<img src="https://github.com/11RO05/handson-iot-raspberrypi/blob/master/New%20Sensors/Circuit%20Diagram/Soil%20Moisture%20Sensor.png" width = 500 height=500>

### INSTRUCTIONS

#### Setting up the Hardware Part
1.	Insert the Micro SD card containing the Raspbian OS into the Raspberry Pi 3. (The slot for the Micro SD is at the bottom of the Pi.)
1.	Connect the Raspberry Pi 3 to a monitor (output device) with the help of a HDMI cable. (If your monitor is VGA type then you should have a HDMI to VGA converter.) 
2.	Connect the mouse and keyboard (input devices) in the USB slots provided (4 slots)
3.	Power up the Pi by connecting it to a power supply and wait for the Raspbian OS to load (This may take some time)
4.	Make the connections as per the circuit diagrams. (You can make the connections before connecting the input and output devices as well)

#### Running the program
1.	Download the [code](https://github.com/11RO05/handson-iot-raspberrypi/blob/master/New%20Sensors/src/moisture.py) provided in the GitHub repository and save it to your desired location.
2.	Open **Python 3.5 (IDLE)** from the main menu and navigate to the code and open it.
3.	Run the code by pressing **F5** or by manually clicking **Run** from the menu Run 
4.	Keep a glass of water nearby. Dip about 3/4th of the moisture sensor in the water and observe the message displayed on the screen.
5.	Now, insert the sensor in the soil to check the moisture in the soil
