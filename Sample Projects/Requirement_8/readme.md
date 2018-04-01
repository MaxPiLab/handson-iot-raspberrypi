## SMART LIGHTS 
**Smart lighting** is a lighting technology designed for energy efficiency. This may include high efficiency fixtures and automated controls that make adjustments based on conditions such as occupancy or daylight availability. The use of automatic light dimming is an aspect of smart lighting that serves to reduce energy consumption. Manual light dimming also has the same effect of reducing energy use.

Smart lighting is the good way which enables to minimize and save light by allowing the householder to control remotely cooling and heating, lighting, and the control of appliances. This ability saves energy and provides a level of comfort and convenience. From outside the traditional lighting industry, the future success of lighting will require involvement of a number of stakeholders and stakeholder communities. The concept of smart lighting also involves utilizing natural light from the sun to reduce the use of man-made lighting, and the simple concept of people turning off lighting when they leave a room.

The concept of smart lighting can be achieved by the use of sensors. A complete sensor consists of a motion detector, an electronic control unit, and a controllable switch/relay. The detector senses motion and determines whether there are occupants in the space. It also has a timer that signals the electronic control unit after a set period of inactivity. The control unit uses this signal to activate the switch/relay to turn equipment on or off. For lighting applications, there are three main sensor types: Passive Infra-Red, Ultrasonic, and hybrid. Motion-detecting (microwave), heating-sensing (infrared), and sound-sensing; optical cameras, infrared motion, optical trip wires, door contact sensors, thermal cameras, micro radars, daylight sensors are a few more examples of smart lighting.

### THINGS USED IN THIS PROJECT

#### HARDWARE COMPONENTS
1.	Raspberry Pi (Model B)		**x1**
2.	Breadboard				**x1**
3.	Jumper wires (Male to Female)	**x1 Set of Each**
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
In this project we will be turning an incandescent light bulb using a PIR sensor. The connections are made as per the circuit diagram. **We will be dealing with high voltages in this experiment so it is advised to make the connections with extreme caution**. One copper wire of the bulb is cut. One half is connected to the common (Chinese - 共同) and the other half to the normally open (Chinese - 常開). The other copper wire is connected to the mains. **After connecting the bulb to the mains make sure not to touch the relay or you might get a shock.** When the supply is given to the relay from the Pi, a red light turns on indicating that the relay has turned ON. The green light on the relay turns on when the switch inside the relay is closed i.e. the current is flowing in the relay. 

When a motion gets detected by the PIR (Passive Infra-Red) sensor current will start flowing in the relay which will close the switch (green light will turn ON) and the bulb connected at the end of the relay will start glowing. All of this happens automatically and there is no need to turn the lights on manually. As soon as motion gets detected the bulb will start glowing. This is a perfect example of an IoT (Internet of Things) project as the PIR sensor is directly communicating with the relay and the relay in turn is turning on the lights i.e. things communicating with things.

![](https://github.com/11RO05/handson-iot-raspberrypi/blob/master/Sample%20Projects/Requirement_8/Circuit%20Diagram.png)

### INSTRUCTIONS
1.	Power up the Pi and make sure that it is running smoothly.
2.	Make the connections as per the circuit diagram. **As we are dealing with high voltage it is advised to perform the experiment after having proper insulation from the ground. There are even chances of electrocution to take place. So be careful**
3.	Connect one half of the cut wire of the bulb to the common (center pin) and the other half of the same wire to normally open. Screw the top with the help of a screwdriver and insert the copper wire inside the relay and then tighten the screw. **(Make sure there are no loose connections)** 
4.	Place the PIR sensor where there is no motion taking place. Keep the relay in a safe place.
5.	Open the Python3 IDLE menu and paste the program code provided for this project
6.	Run the program by pressing F5 or by clicking **run** from the run menu in IDLE
7.	Move your hand in front of the PIR sensor. The bulb will turn ON. The PIR sensor triggers the relay and the switch gets closed hence turning the light ON. 

### NOTE
1.	The program code for this project is present in the **Requirement_8** folder with the name **s_light.py**
