## SMART LIGHTS 

**Smart lighting** is a lighting technology designed for energy efficiency. This may include high efficiency fixtures and automated controls that make adjustments based on conditions such as occupancy or daylight availability. The use of automatic light dimming is an aspect of smart lighting that serves to reduce energy consumption. Manual light dimming also has the same effect of reducing energy use.

Smart lighting is the good way which enables to minimize and save light by allowing the householder to control remotely cooling and heating, lighting, and the control of appliances. This ability saves energy and provides a level of comfort and convenience. From outside the traditional lighting industry, the future success of lighting will require involvement of a number of stakeholders and stakeholder communities. The concept of smart lighting also involves utilizing natural light from the sun to reduce the use of man-made lighting, and the simple concept of people turning off lighting when they leave a room.

The concept of smart lighting can be achieved by the use of sensors. A complete sensor consists of a motion detector, an electronic control unit, and a controllable switch/relay. The detector senses motion and determines whether there are occupants in the space. It also has a timer that signals the electronic control unit after a set period of inactivity. The control unit uses this signal to activate the switch/relay to turn equipment on or off. For lighting applications, there are three main sensor types: Passive Infra-Red, Ultrasonic, and hybrid. Motion-detecting (microwave), heating-sensing (infrared), and sound-sensing; optical cameras, infrared motion, optical trip wires, door contact sensors, thermal cameras, micro radars, daylight sensors are a few more examples of smart lighting.

### THINGS USED IN THIS PROJECT
#### HARDWARE COMPONENTS
1.	Raspberry Pi (Model B)		**x1**
2.	Breadboard				**x1**
3.	Jumper wires (Male to Female)	**x10**
4.	5v Relay 				**x1**
5.	PIR Sensor				**x1**
6.	Incandescent light Bulb		**x1**

#### MISCELLANEOUS
1.	Mains (Power Supply)		**x1**
2.	Insulated Copper wire	 (to connect to the mains) 	**x2**
3.	Screwdriver 			**x1**

#### SOFTWARE COMPONENTS
1.	Python 3.5 (IDLE)


### STORY
In this project we will be turning an incandescent light bulb using a PIR sensor. The connections are made as per the circuit diagram. **We will be dealing with high voltages in this experiment so it is advised to make the connections with extreme caution**. One copper wire of the bulb is cut into two and is connected to the common (Chinese - 共同) and the normally open (Chinese - 常開). The other copper wire is connected to the mains. **After connecting the bulb to the mains make sure not to touch the relay in order to prevent electrocution.** When the supply is given to the relay from the Pi, a red light turns on indicating that the relay is working. The green light on the relay turns on when the switch inside the relay is closed i.e. the current is flowing in the relay. When a motion gets detected by the PIR (Passive Infra-Red) sensor current will start flowing in the relay which will close the switch (green light will turn ON) and the bulb connected at the end of the relay will start glowing. All of this happens automatically and there is no need to turn the lights on manually. As soon as motion gets detected the bulb will start glowing and when there is no motion the bulb remains in the off condition. This is a perfect example of an IoT (Internet of Things) project as the PIR sensor is directly communicating with the relay and the relay in turn is turning on the lights i.e. things communicating with things.

![](https://github.com/11RO05/handson-iot-raspberrypi/blob/master/circuit-diagram/Smart%20Lights%20using%20Relay%20and%20PIR%20sensor.png)

### INSTRUCTIONS
#### Setting up the Hardware Part
1.	Insert the Micro SD card containing the Raspbian OS into the Raspberry Pi 3. (The slot for the Micro SD is at the bottom of the Pi.)
1.	Connect the Raspberry Pi 3 to a monitor (output device) with the help of a HDMI cable. (If your monitor is VGA type then you should have a HDMI to VGA converter.) 
2.	Connect the mouse and keyboard (input devices) in the USB slots provided (4 slots)
3.	Power up the Pi by connecting it to a power supply and wait for the Raspbian OS to load (This may take some time)
4.	Make the connections as per the circuit diagrams. (You can make the connections before connecting the input and output devices as well)
5.	Connect the bulb to the common (center pin) and the normally open. Screw the top with the help of a screwdriver and insert the copper wire inside the relay and then tighten the screw. **(Make sure there are no loose connections)**
#### Running the program / Making the Bulb glow
1.	Open the terminal and go to the required directory by using the command **cd path_of_the_directory** (example:- **cd Desktop** - *Changes the directory to Desktop*)
2.	Create a new python file in the required directory by typing **nano file_name.py** (giving the extension **.py** tells the terminal to create a python file) 
3.	When a new terminal opens, copy and paste the program code in the file_name.py and save it by using **ctrl x** and then pressing **Y** when prompted.
4.	Run the program by using the command **python file_name.py**
5.	We can observe the bulb turn on when a motion is detected by the PIR sensor. 

#### NOTE
The program code for this project is in the **src folder** with the name **relay_pir.py**



