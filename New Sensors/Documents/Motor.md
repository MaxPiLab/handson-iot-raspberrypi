## DC Motor
A **DC motor** is any of a class of rotary electrical machines that converts direct current electrical energy into mechanical energy. The most common types rely on the forces produced by magnetic fields. Nearly all types of DC motors have some internal mechanism, either electromechanical or electronic, to periodically change the direction of current flow in part of the motor.

DC motors were the first type widely used, since they could be powered from existing direct-current lighting power distribution systems. A DC motor's speed can be controlled over a wide range, using either a variable supply voltage or by changing the strength of current in its field windings. Small DC motors are used in tools, toys, and appliances. The universal motor can operate on direct current but is a lightweight brushed motor used for portable power tools and appliances. Larger DC motors are used in propulsion of electric vehicles, elevator and hoists, or in drives for steel rolling mills. The advent of power electronics has made replacement of DC motors with AC motors possible in many applications.

<img src="https://github.com/11RO05/handson-iot-raspberrypi/blob/master/New%20Sensors/Images/DC%20Motor.jpg">

### Working of DC Motor
When the terminals of the motor are connected to an external source of DC supply: 
1.	The field magnets are excited developing alternate N and S poles
2.	The armature conductors carry currents. 

All conductors under N-pole carry currents in one direction while all the conductors under S-pole carry currents in the opposite direction. Suppose the conductors under N-pole carry currents into the plane of the paper and those under S-pole carry currents out of the plane of the paper as shown in Figure. Since each armature conductor is carrying current and is placed in the magnetic field, mechanical force acts on it. On applying Fleming’s left hand rule, it is clear that force on each conductor is tending to rotate the armature in anticlockwise direction. All these forces add together to produce a driving torque which sets the armature rotating. When the conductor moves from one side of a brush to the other, the current in that conductor is reversed and at the same time it comes under the influence of next pole which is of opposite polarity. Consequently, the direction of force on the conductor remains the same. It should be noted that the function of a commutator in the motor is the same as in a generator. By reversing current in each conductor as it passes from one pole to another, it helps to develop a continuous and unidirectional torque.

<img src="https://github.com/11RO05/handson-iot-raspberrypi/blob/master/New%20Sensors/Images/Inside%20DC%20Motor.png" width=200 height=200><img src="https://github.com/11RO05/handson-iot-raspberrypi/blob/master/New%20Sensors/Images/Woking%20of%20DC.PNG" width=400 height=200 align=right>

### THINGS USED IN THIS PROJECT

#### HARDWARE COMPONENTS
1.	Raspberry Pi				**x1**
2.	Breadboard				**x1**
3.	L293D IC   		**x1**
4.	DC Motor		**x2**
5.	9V Battery  	**x1**		
6.	Jumper wires				**x1 Set of each**

#### SOFTWARE COMPONENTS
1.	Python 3.5 (IDLE)

### STORY
In this project we will be connecting two DC motors to our Raspberry Pi with the help of L293D IC. The motors are connected to the IC and the IC is controlled by the raspberry pi. Hence using the raspberry pi we are controlling the DC motor. A DC motor does not have any polarity. So it can connected to any terminal of the battery. When a DC Motor is directly connected to the battery the direction of rotation will be in a certain direction and when we change the terminals then the direction of rotation will be reversed. The same thing has to done using our raspberry pi. 

L293D is a dual H-bridge motor driver integrated circuit (IC). Motor drivers act as current amplifiers since they take a low-current control signal and provide a higher-current signal. This higher current signal is used to drive the motors. L293D is a typical Motor driver or Motor Driver IC which allows DC motor to drive on either direction. L293D is a 16-pin IC which can control a set of two DC motors simultaneously in any direction. It means that you can control two DC motor with a single L293D IC. The input pins of the IC are connected to the raspberry pi. The enable pins enable (activate) one whole side of the IC. There are a total of 2 Enable pins. So if Enable 1 is kept high then the pins 1-8 will work i.e. one motor can be controlled and if Enable 2 is kept high then the pins 9-16 will work i.e. the second motor can be controlled. 

<img src="https://github.com/11RO05/handson-iot-raspberrypi/blob/master/New%20Sensors/Images/L293D.jpg" width=300 height=300> <img src="https://github.com/11RO05/handson-iot-raspberrypi/blob/master/New%20Sensors/Images/L293D%20Pin.png" width=300 height=300 align=right>

The head of the IC has a semicircle and the left side pins are 1-8 (top – bottom) and the right side pins are 9-16 (bottom – top). We have to provide a DC power source to the L293D IC which will be used by the motors in order to drive in either direction. The power should be supplied to pin 8 of the IC. The connections for the project are as shown below. As there are many wires to connect be careful with the connections and make sure to double check before moving on to the programming stage.

<img src="https://github.com/11RO05/handson-iot-raspberrypi/blob/master/New%20Sensors/Circuit%20Diagram/DC%20Motor.png" height=500 width=650>

### INSTRUCTIONS

#### Setting up the Hardware Part
1.	Insert the Micro SD card containing the Raspbian OS into the Raspberry Pi 3. (The slot for the Micro SD is at the bottom of the Pi.)
1.	Connect the Raspberry Pi 3 to a monitor (output device) with the help of a HDMI cable. (If your monitor is VGA type then you should have a HDMI to VGA converter.) 
2.	Connect the mouse and keyboard (input devices) in the USB slots provided (4 slots)
3.	Power up the Pi by connecting it to a power supply and wait for the Raspbian OS to load (This may take some time)
4.	Make the connections as per the circuit diagrams. (You can make the connections before connecting the input and output devices as well)

#### Running the program 
1.	Copy and paste the [code](https://github.com/11RO05/handson-iot-raspberrypi/blob/master/New%20Sensors/src/Motors.py) provided in the GitHub repository and save it to your desired location.
2.	Open **Python 3.5 (IDLE)** from the main menu and navigate to the code and open it.
3.	Run the code by pressing **F5** or by manually clicking **Run** from the menu Run
4.	Observe the rotation of the motors connected. For the first 10 seconds the motors rotate in the anti-clockwise direction and for the next 10 seconds the motors rotate in clockwise direction

