## PIR SENSOR
A **Passive Infrared Sensor** (PIR sensor) is an electronic sensor that measures infrared (IR) light radiating from objects in its field of view. They are most often used in PIR-based motion detectors. The term passive in this instance refers to the fact that PIR devices do not generate or radiate energy for detection purposes. They work entirely by detecting infrared radiation emitted by or reflected from objects. All objects with a temperature above absolute zero emit heat energy in the form of radiation. Usually this radiation isn't visible to the human eye because it radiates at infrared wavelengths, but it can be detected by electronic devices designed for such a purpose.

![](https://github.com/11RO05/handson-iot-raspberrypi/blob/master/images/PIR.png)

An individual PIR sensor detects changes in the amount of infrared radiation impinging upon it, which varies depending on the temperature and surface characteristics of the objects in front of the sensor. When an object, such as a human, passes in front of the background, such as a wall, the temperature at that point in the sensor's field of view will rise from room temperature to body temperature, and then back again. The sensor converts the resulting change in the incoming infrared radiation into a change in the output voltage, and this triggers the detection. Objects of similar temperature but different surface characteristics may also have a different infrared emission pattern, and thus moving them with respect to the background may trigger the detector as well.

### THINGS USED IN THIS PROJECT

#### HARDWARE COMPONENTS
1.	Raspberry Pi 3 (Model B)		**x1**
2.	Breadboard				**x1**
3.	Jumper Wires (Male to Female)	**x6**
4.	PIR Sensor				**x1**

#### SOFTWARE COMPONENTS
1.	Python 3.5 (IDLE)

### STORY
In this project we will be detecting motion with the help of a PIR Sensor. The PIR sensor consists of a pyroelectric sensor that generates energy when exposed to heat i.e. when a human or animal comes in the radar of the PIR sensor, they emit infrared radiations in the form of heat. This causes the detection by the sensor. The igloo like structure on the PIR sensor is called the Fresnel lens which focuses the infrared signals on to the pyroelectric sensor. A PIR Sensor has two potentiometers, one for adjusting the sensitivity (up to 7m) and the other to adjust the delay time (0.3s-5min). It also consists of 3 pins namely ground, digital out and supply (when held with the Fresnel facing downwards and the potentiometers facing your body). 

<img src="https://github.com/11RO05/handson-iot-raspberrypi/blob/master/images/PIR%201.png" width=200 height=200 align="left"> 
<img src="https://github.com/11RO05/handson-iot-raspberrypi/blob/master/images/PIR%202.png" width=200 height=200 align="middle">


The connections are made as per the circuit diagram. The breadboard is just acting as a medium, the sensor can be connected directly to the Pi as well using female to female jumper wires. The digital out of the sensor is connected to PIN 26 (GPIO 7). The ground is connected to PIN 6 and a supply of 5V is given from the Pi. 

![](https://github.com/11RO05/handson-iot-raspberrypi/blob/master/circuit-diagram/PIR%20Sensor.png)

### INSTRUCTIONS
#### Setting up the Hardware Part
1.	Insert the Micro SD card containing the Raspbian OS into the Raspberry Pi 3. (The slot for the Micro SD is at the bottom of the Pi.)
1.	Connect the Raspberry Pi 3 to a monitor (output device) with the help of a HDMI cable. (If your monitor is VGA type then you should have a HDMI to VGA converter.) 
2.	Connect the mouse and keyboard (input devices) in the USB slots provided (4 slots)
3.	Power up the Pi by connecting it to a power supply and wait for the Raspbian OS to load (This may take some time)
4.	Make the connections as per the circuit diagrams. (You can make the connections before connecting the input and output devices as well)
#### Running the Program
1.	Open the terminal and create a new python file by typing **nano file_name.py** (giving the extension **.py** tells the terminal to create a python file)
2.	When a new terminal open copy and paste the program code in the file_name.py and save it by using **ctrl x** and then pressing **Y** when prompted.
3.	To run the program use the command **python file_name.py**
4.	After the program is run a text appears on the screen *PIR Module Test*. When a movement is made in front of the PIR, we can observe on the screen that motion has been detected. 
5.	The text will appear on the screen depending on the delay time of the PIR sensor.

