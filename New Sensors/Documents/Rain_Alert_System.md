## Rain Alert System

### Why Rain alert System??
Water is a basic need in every one’s life. Saving water and proper usage of water is very important. When we are sleeping we don’t get to know about the rain and only regret it later that none of the water was saved. We can use an alarm when there is rain, so that we can make some actions for rain water harvesting and also save the rain water for using it later. With the help of saving this rain water through rain water harvesting, we can increase the levels of underground water by using underwater recharge technique. Rain water detector will detect the rain and make an alert. Rain water detector is used in the irrigation field, home automation, communication, automobiles etc.

### Raindrop Sensor
The rain sensor module is an easy tool for rain detection. It can be used as a switch when raindrop falls through the raining board and also for measuring rainfall intensity. The module features, a rain board and the control board that is separate for more convenience, power indicator LED and an adjustable sensitivity though a potentiometer. 

<img src="https://github.com/11RO05/handson-iot-raspberrypi/blob/master/New%20Sensors/Images/Raindrop%20Sensor.jpg" width=400 height=400>

### Working of the Raindrop Sensor
This module allows you measure moisture via analog output pins and it provides a digital output when a threshold of moisture is exceeded. The module is based on the LM393 op amp. It includes the electronics module and a printed circuit board (control board) that “collects” the rain drops. As rain drops are collected on the circuit board, they create paths of parallel resistance that are measured via the op amp. The lower the resistance (or the more water), the lower the voltage output. Conversely, the less water, the greater the output voltage on the analog pin. A completely dry board for example will cause the module to output five volts.

### THINGS USED IN THIS PROJECT	

#### HARDWARE COMPONENTS
1.	Raspberry Pi 	**x1**
2.	Raindrop Sensor Module (Control Board + Detection Board) 	**x1**
3.	Buzzer 		**x1**
4.	Jumper wires	**x1 Set of each**

#### SOFTWARE COMPONENTS
1.	Python 3.5 (IDLE)

### STORY
In this project we will be detecting whether it is raining or not. If it is raining then we will alert by making the buzzer to beep for set number of times and also a message will be displayed on the screen. If it is not raining then the buzzer will be off and nothing will be displayed. 

The main component of our project is the Raindrop Sensor. It is a module which consists of the control board and the detection board. The control board consists of a potentiometer which is used to vary the sensitivity of the detection board. The detection board consists of Bakelite or Mica board with aluminium wiring throughout. The control board provides a voltage to the detection board. If there is no rain, the resistance between the contacts will be very high as there will be no conduction between the wires in the sensor. If there is rain, the water drops will fall on the rain sensor, which will form a conductive path between the wires and it also decreases the resistance between the contacts. 

<img src="https://github.com/11RO05/handson-iot-raspberrypi/blob/master/New%20Sensors/Images/Rain-Water-Sensor.jpg" width=500 height=400>

In other words it acts as a switch. When it is raining the switch gets closed which sends data to the Pi. Using programming we are making the pin connected to the buzzer to go high and the buzzer beeps. When it is not the switch remains open. It is also possible to use many other things other than the buzzer or add many things along with the buzzer. 

The control board consists of a total of 6 pins. 4 are used to connect to a microcontroller and the other two are used to connect the detection board. Since we are using the Raspberry Pi using the analog pin comes with great challenges. In this project we will be using only the digital pin. The connections of the control board are as shown in the table and the connections for the circuit are shown in the diagram below:

|**Control Board Pin**|**Remarks**|**RPi Pin**|
| Vcc | 3.3V Power Supply | 1 |
|Gnd | Ground | 6 |
| D0 | Digital Pin | 12 (GPIO18) |
| A0 | Analog Pin | Not connected |

<img src="https://github.com/11RO05/handson-iot-raspberrypi/blob/master/New%20Sensors/Circuit%20Diagram/Rain%20Alert%20System.png" width=650 height=500>

### INSTRUCTIONS 

#### Setting up the Hardware Part
1.	Insert the Micro SD card containing the Raspbian OS into the Raspberry Pi 3. (The slot for the Micro SD is at the bottom of the Pi.)
1.	Connect the Raspberry Pi 3 to a monitor (output device) with the help of a HDMI cable. (If your monitor is VGA type then you should have a HDMI to VGA converter.) 
2.	Connect the mouse and keyboard (input devices) in the USB slots provided (4 slots)
3.	Power up the Pi by connecting it to a power supply and wait for the Raspbian OS to load (This may take some time)
4.	Make the connections as per the circuit diagrams. (You can make the connections before connecting the input and output devices as well)

#### Running the program 
1.	Copy and paste the [code](https://github.com/11RO05/handson-iot-raspberrypi/blob/master/New%20Sensors/src/Raindrop.py) provided in the GitHub repository and save it to your desired location.
2.	Open **Python 3.5 (IDLE)** from the main menu and navigate to the code and open it.
3.	Run the code by pressing **F5** or by manually clicking **Run** from the menu Run
4.	Pour some water on the detection board and observe the changes that take place i.e. the message on the screen must appear and the buzzer should beep a certain number of times after a pause of 1 second.
5.	Make sure to keep the detection board at an angle otherwise the water being poured the first time will remain on the board.
6.	Wipe the board after the conduction and use it again if you like. Feel free to make any changes to the code and add your own sensors and be creative.

 
