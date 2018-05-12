## PULSE SENSOR
Pulse Sensor is a well-designed plug-and-play heart-rate sensor for Arduino. It can be used by students, artists, athletes, makers, and game & mobile developers who want to easily incorporate live heart rate data into their projects. The sensor clips onto a fingertip or earlobe and plugs right into Arduino. It also includes an open-source monitoring app that graphs your pulse in real time.

The Pulse Sensor can be connected to Arduino, or plugged into a breadboard. The front of the sensor is the pretty side with the Heart logo. This is the side that makes contact with the skin. On the front you see a small round hole, which is where the LED shines through from the back, and there is also a little square just under the LED. The square is an ambient light sensor, exactly like the one used in cell phones, tablets, and laptops, to adjust the screen brightness in different light conditions. The LED shines light into the fingertip or earlobe, or other capillary tissue, and sensor reads the light that bounces back. The back of the sensor is where the rest of the parts are mounted.

<img src="https://github.com/11RO05/handson-iot-raspberrypi/blob/master/New%20Sensors/Images/Pulse%20sensor.png" width=300 height=300><img src="https://github.com/11RO05/handson-iot-raspberrypi/blob/master/New%20Sensors/Images/Pulse%20sensor%20back%20view.png" width=300 height=300> 
### THINGS USED IN THIS PROJECT

#### HARDWARE COMPONENTS
1.	Raspberry Pi		**x1**
2.	Breadboard 		**x1**
3.	Pulse Sensor		**x1**
4.	MCP3008 (ADC)	**x1**
5.	Jumper Wires		**x1 set of each**

#### SOFTWARE COMPONENTS
1.	Python 3.5 (IDLE)

### STORY
In this project we will be measuring the heartbeat of a person. As we know the pulse sensor is designed for the Arduino and it does not provide a digitally readable signal. All the GPIO pins of the Pi deal only with digital signals and there is no integrated analog IO pin. So to convert the analog output of the pulse sensor we are using an analog to digital converter (ADC) i.e. MCP3008. This ADC is basically an IC which, as the name suggests, converts analog signals to digital signals. MCP3008 uses SPI interface to communicate with the Pi. The ADC consists of 16 pins. One side of the ADC gets connected to the pi via the SPI and the other side contains 8 channels (named from channel 0 - channel 7) where the analog sensors can be connected. In this case the pulse sensor is connected to Channel 0. You can connect it to any other channel you like just make sure to change it later in the code. The Pulse sensor has a total of 3 pins namely Vcc, Gnd and (signal) S. The connections to the Pulse sensor are as follows:

-	Vcc – 3.3V of the Pi
-	Gnd – Ground of the Pi
-	S (signal) – Channel 0 of MCP3008

As said earlier the MCP3008 has 16 pins. The pin diagram of which is shown below:

<img src="https://github.com/11RO05/handson-iot-raspberrypi/blob/master/New%20Sensors/Images/MCP3008.png" width=200 height=200 align=right>

The connections of the ADC to the Pi is as follows: 
-	Pin 10 (CE) – GPIO 8 (PIN 24)
-	Pin 11 (MOSI) – GPIO 9 (PIN 21)
-	Pin 12 (MISO) – GPIO 10 (PIN 19)
-	Pin 13 (SCLK) – GPIO 11 (PIN 21)
-	Pin 1 (Channel 0) – Signal pin from the Pulse sensor
- The other connections are made to either Vcc or GND. 


### INSTRUCTIONS

#### Setting up the Hardware Part
1.	Insert the Micro SD card containing the Raspbian OS into the Raspberry Pi 3. (The slot for the Micro SD is at the bottom of the Pi.)
1.	Connect the Raspberry Pi 3 to a monitor (output device) with the help of a HDMI cable. (If your monitor is VGA type then you should have a HDMI to VGA converter.) 
2.	Connect the mouse and keyboard (input devices) in the USB slots provided (4 slots)
3.	Power up the Pi by connecting it to a power supply and wait for the Raspbian OS to load (This may take some time)
4.	Make the connections as per the circuit diagrams. (You can make the connections before connecting the input and output devices as well)

<img src="https://github.com/11RO05/handson-iot-raspberrypi/blob/master/New%20Sensors/Circuit%20Diagram/Pulse%20Sensor.png" width=750 height=500>

#### Running the program 
1.	Copy and paste the [code](https://github.com/11RO05/handson-iot-raspberrypi/blob/master/New%20Sensors/src/beats.py) provided in the GitHub repository and save it to your desired location. Make sure to save the [library files](https://github.com/11RO05/handson-iot-raspberrypi/tree/master/New%20Sensors/src) linked with the program code.
2.	Open **Python 3.5 (IDLE)** from the main menu and navigate to the code and open it.
3.	Run the code by pressing **F5** or by manually clicking **Run** from the menu Run 
4.	When Pi is powered a bright green light will glow on the sensor. The heart symbol on the pulse sensor is where you have to place you finger.
5.	 Place the sensor on your fingertip or your earlobe and observe your heart beats per minute. The light from the sensor falls onto the cells and the light which reflects back helps to calculate the heartbeat. 
6.	The sensor is not always accurate so be patient and also place the finger on the sensor properly. There is no need to press it too hard. 

