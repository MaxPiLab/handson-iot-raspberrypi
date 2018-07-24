## Fingerprint Sensor
The module performs series of functions like fingerprint enrolment, image processing, fingerprint matching, searching and template storage. There is a high powered DSP chip in the module that does the image rendering, calculation, feature-finding and searching. This module can be connected to any microcontroller or system with TTL serial, and send packets of data to take photos, detect prints, hash and search. This module can be used to enroll new fingers directly and up to 162 finger prints can be stored in the on board FLASH memory. There is a red or green LED in the lens that lights up only during a scanning process

<img src="https://github.com/11RO05/handson-iot-raspberrypi/blob/master/New%20Sensors/Images/R307_2.jpg" height=250 width=300><img src="https://github.com/11RO05/handson-iot-raspberrypi/blob/master/New%20Sensors/Images/R307_1.jpg" height=250 width=300 align=right>

## Working of the Fingerprint Sensor
Fingerprint processing includes two parts: fingerprint enrolment and fingerprint matching (the matching can be 1:1 or 1: N).When enrolling, user needs to enter the finger two times. The system will process the two time finger images, generate a template of the finger based on processing results and store the template. When matching, user enters the finger through optical sensor and system will generate a template of the finger and compare it with templates of the finger library. For 1:1 matching, system will compare the live finger with specific template designated in the Module; for 1: N matching, or searching, system will search the whole finger library for the matching finger. In both circumstances, system will return the matching result, success or failure.

### THINGS USED IN THIS PROJECT	

#### HARDWARE COMPONENTS
1.	Raspberry Pi 	**x1**
2.	Fingerprint Sensor R307	**x1**
3.	Serial USB Converter		**x1**
4.	Female to Female Jumper wires	**x4**

#### SOFTWARE COMPONENTS
1.	Python 3.5 (IDLE)

### STORY
In this project we will be interfacing the raspberry pi with the fingerprint sensor to read a fingerprint of a user and grant them access based on the match of the fingerprint. If the fingerprint matches then access will be granted otherwise it will not be granted. Using this Raspberry Pi Finger Print System, we can enrol new finger prints in the system and can delete the already fed finger prints.
The fingerprint sensor used is the R307. R307 Fingerprint Module consists of optical fingerprint sensor, high-speed DSP processor, high-performance fingerprint alignment algorithm, high-capacity FLASH chips and other hardware and software composition, stable performance, simple structure, with fingerprint entry, image processing, fingerprint matching, search and template storage and other functions. It is superior to the R305 or in other words R307 is the upgraded version of R305 with more storage capacity, easy USB operation at a low voltage level (3.3V). The pinout diagram of the sensor is shown below. 

<img src="https://github.com/11RO05/handson-iot-raspberrypi/blob/master/New%20Sensors/Images/USB-TTL%20Converter%20(1).jpg" height=300 width=300 align=right><img src="https://github.com/11RO05/handson-iot-raspberrypi/blob/master/New%20Sensors/Images/R307%20Pinout.jpg" height=300 width=300>

The R307 fingerprint sensor is connected to the raspberry pi via the USB to TTL converter. The stock cables that come with the fingerprint sensor are connected at the bottom in the slot provided. Out of the 6 wires present we require only 4 wires for the successful operation of the fingerprint sensor. With the R307 we have an option of either providing it with a 5V supply or a lower 3.3V supply. The other wires are used for the UART communication via the USB. The Transmission (TXD) pin of the fingerprint sensor will be connected to the Receiver (RXD) pin of the USB-TTL converter and the Receiver (RXD) pin of the fingerprint sensor will be connected to the Transmission (TXD) pin of the USB-TTL converter. The wires from the fingerprint sensor are connected to the USB to TTL converter and the converter in turn is connected to the raspberry pi via the USB port. The circuit diagram is shown in the figure below:

<img src="https://github.com/11RO05/handson-iot-raspberrypi/blob/master/New%20Sensors/Circuit%20Diagram/Fingerprint%20Sensor.png" height=450 width=550>

### INSTRUCTIONS

#### Setting up the Hardware Part
1.	Insert the Micro SD card containing the Raspbian OS into the Raspberry Pi 3. (The slot for the Micro SD is at the bottom of the Pi.)
1.	Connect the Raspberry Pi 3 to a monitor (output device) with the help of a HDMI cable. (If your monitor is VGA type then you should have a HDMI to VGA converter.) 
2.	Connect the mouse and keyboard (input devices) in the USB slots provided (4 slots)
3.	Power up the Pi by connecting it to a power supply and wait for the Raspbian OS to load (This may take some time)
4.	Make the connections as per the circuit diagrams. (You can make the connections before connecting the input and output devices as well)

#### Running the program
1.	We have to check whether the USB is read by the pi or not. To do so, open the terminal and type the following command **ls /dev/ttyUSB***. If no other serial devices are connected via USB nothing should be displayed first and afterwards /dev/ttyUSB0. If other devices are connected then you have to adapt accordingly.
2.	To run the code for fingerprint sensor we have to download and install a few libraries. Type the following command in the terminal to do so: 
   * **wget -O – http://apt.pm-codeworks.de/pm-codeworks.de.gpg | apt-key add -**
   * **wget http://apt.pm-codeworks.de/pm-codeworks.list -P /etc/apt/sources.list.d/** 
3.	We then download the python fingerprint using the following command **apt-get install python-fingerprint --yes**
4.	There are different operations that can be performed on the fingerprint sensor such as Enroll a fingerprint, Delete, search and index. Each of which performs different operations and for each a [code](https://github.com/11RO05/handson-iot-raspberrypi/tree/master/New%20Sensors/src/Fingerprint%20Sensor) has been provided in the GitHub repository. 
5.	Run the program which you desire by opening it with Python3.5 (IDLE) and press F5 or click run from the run menu.
6.	Add your own sensors when the fingerprint has been detected such as open a gate using a servo motor and enjoy the fastness and the beauty of the technology.
