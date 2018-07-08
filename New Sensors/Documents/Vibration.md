## Vibration Sensor
Chaos sometimes begins with a low rumble or a small shake. If a sensor is involved, it might be measuring the first vibrational movements of an earthquake or a mechanical failure in an industrial setting. It’s typically noise that gives us the first clue that trouble looms—and if trouble is what you’re trying to avoid, there can be two aspects of vibration you should pay close attention to:
1.	The monitoring of vibration
2.	Maintenance based on sensor data to avoid future issues

### Why monitor vibration? 
Vibrations produced by industrial machinery are vital indicators of machinery health. Vibration analysis is used as a tool to determine a machine’s condition and the specific cause and location of problems, expediting repairs and minimizing costs. Machinery monitoring programs record a machine's vibration history. Monitoring vibration levels over time allows prediction of problems before serious damage can occur. 

Critical to vibration monitoring and analysis are machine-mounted sensors. Three parameters representing motion detected by vibration monitors are displacement, velocity and acceleration. Mathematically related, the parameters can be taken from a variety of motion sensors. Selection of a sensor proportional to displacement, velocity, or acceleration depends on the frequencies of interest and signal levels that are involved.

Displacement sensors are used to measure shaft motion and internal clearances. Velocity sensors are used for low to medium frequency measurements (1 to 1000 Hz) and are useful for vibration monitoring and balancing operations on rotating machinery. Accelerometers are the preferred motion sensors for most vibration monitoring. 

<img src="https://github.com/11RO05/handson-iot-raspberrypi/blob/master/New%20Sensors/Images/Vibration%20Sensor.JPG" width=300 height=300><img src="https://github.com/11RO05/handson-iot-raspberrypi/blob/master/New%20Sensors/Images/Vibration%20Sensor%20-%20Descriptive%20image.JPG" width=500 height=300 align=right> 

### THINGS USED IN THIS PROJECT	

#### HARDWARE COMPONENTS
1.	Raspberry Pi 	**x1**
2.	Sw-420	**x1**
3.	Female to Female Jumper wires	**x3**

#### SOFTWARE COMPONENTS
1.	Python 3.5 (IDLE)

### STORY
In this project we will be using SW-420 vibration sensor to detect the vibrations that occur. In many cases the vibrations are useful. This module features an adjustable potentiometer, a vibration sensor, and a LM393 comparator chip to give an adjustable digital output based on the amount of vibration. The potentiometer can be adjusted to both increase and decrease the sensitivity to the desired amount. The module outputs a logic level high (VCC) when it is triggered and a low (GND) when it isn’t. Additionally there is an on-board LED that turns on when the module is triggered.

 The vibration sensor SW-420 comes with breakout board that includes comparator LM 393 and Adjustable on board potentiometer for sensitivity threshold selection, and signal indication LED. This sensor module produce logic states depends on vibration and external force applied on it. When there is no vibration this module gives logic LOW output. When it feels vibration then output of this module goes to logic HIGH. The working bias of this circuit is between 3.3V to 5V DC.
 
<img src="https://github.com/11RO05/handson-iot-raspberrypi/blob/master/New%20Sensors/Images/Vibration-Sensor%20Internal.jpg" width=500 height=400> 
 
### Working of the sensor
Single-roller type full induction trigger switch. When no vibration or tilt, the product is ON conduction state, and in the steady state, when a vibration or tilt, the switch will be rendered instantly disconnect the conductive resistance increases, generating a current pulse signal, thereby triggering circuit. These products are completely sealed package, waterproof, dustproof. Usually at any angle switch is ON state, by the vibration or movement, the rollers of the conduction current in the switch will produce a movement or vibration, causing the current through the disconnect or the rise of the resistance and trigger circuit. The characteristics of this switch is usually general in the conduction state briefly disconnected resistant to vibration, so it's high sensitivity settings by IC, customers according to their sensitivity requirements for adjustments.
SW-420 consists of only three pins and these can be connected directly to the GPIO pins of the raspberry pi. The circuit diagram for the same is shown below. 

|**SW-420 Pin**|**Remarks**|**RPi Pin**|
|--------------|-----------|-----------|
| Vcc | 5V Power Supply | 2 |
| Gnd | Ground | 6 |
| D0 | Digital Ouput | 11 (GPIO 17) |

<img src="https://github.com/11RO05/handson-iot-raspberrypi/blob/master/New%20Sensors/Circuit%20Diagram/Vibration%20Sensor.png" width=650 height=400>

### INSTRUCTIONS 

#### Setting up the Hardware Part
1.	Insert the Micro SD card containing the Raspbian OS into the Raspberry Pi 3. (The slot for the Micro SD is at the bottom of the Pi.)
1.	Connect the Raspberry Pi 3 to a monitor (output device) with the help of a HDMI cable. (If your monitor is VGA type then you should have a HDMI to VGA converter.) 
2.	Connect the mouse and keyboard (input devices) in the USB slots provided (4 slots)
3.	Power up the Pi by connecting it to a power supply and wait for the Raspbian OS to load (This may take some time)
4.	Make the connections as per the circuit diagrams. (You can make the connections before connecting the input and output devices as well)

#### Running the program 

1.	Copy and paste the [code](https://github.com/11RO05/handson-iot-raspberrypi/blob/master/New%20Sensors/src/Vibration.py) provided in the GitHub repository and save it to your desired location.
2.	Open **Python 3.5 (IDLE)** from the main menu and navigate to the code and open it.
3.	Run the code by pressing **F5** or by manually clicking **Run** from the menu Run
4.	Shake the vibration sensor module and observe the message getting displayed on the computer screen

