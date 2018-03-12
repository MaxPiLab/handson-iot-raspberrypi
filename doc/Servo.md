## SERVO MOTOR
### What is a Servo Motor??
**Servo motors** (or servos) are self-contained electric devices that rotate or push parts of a machine with great precision. Servos are found in many places: from toys to home electronics to cars and airplanes. If you have a radio-controlled model car, airplane, or helicopter, you are using at least a few servos. In a model car or aircraft, servos move levers back and forth to control steering or adjust wing surfaces. By rotating a shaft connected to the engine throttle, a servo regulates the speed of a fuel-powered car or aircraft. Servos also appear behind the scenes in devices we use every day. 
<img src="https://github.com/11RO05/handson-iot-raspberrypi/blob/master/images/Servo.png" width=300 height=300 align="middle">

### How does a Servo Motor work??
The simplicity of a servo is among the features that make them so reliable. The heart of a servo is a small direct current (DC) motor, similar to what you might find in an inexpensive toy. These motors run on electricity from a battery and spin at high RPM (rotations per minute) but put out very low torque (a twisting force used to do work— you apply torque when you open a jar). An arrangement of gears takes the high speed of the motor and slows it down while at the same time increasing the torque. (Basic law of physics: work = force x distance.) A tiny electric motor does not have much torque, but it can spin really fast (small force, big distance). The gear design inside the servo case converts the output to a much slower rotation speed but with more torque (big force, little distance). The amount of actual work is the same, just more useful. Gears in an inexpensive servo motor are generally made of plastic to keep it lighter and less costly. On a servo designed to provide more torque for heavier work, the gears are made of metal and are harder to damage.

### How is a Servo Controlled?

Servos are controlled by sending an electrical pulse of variable width, or pulse width modulation (PWM), through the control wire. There is a minimum pulse, a maximum pulse, and a repetition rate. A servo motor can usually only turn 90 degrees in either direction for a total of 180 degree movement. The motor’s neutral position is defined as the position where the servo has the same amount of potential rotation in the both the clockwise or counter-clockwise direction. The PWM sent to the motor determines position of the shaft, and based on the duration of the pulse sent via the control wire; the rotor will turn to the desired position. The servo motor expects to see a pulse every 20 milliseconds (ms) and the length of the pulse will determine how far the motor turns. For example, a 1.5ms pulse will make the motor turn to the 90-degree position. Shorter than 1.5ms moves it to 0 degrees, and any longer than 1.5ms will turn the servo to 180 degrees, as diagrammed below:

![](https://github.com/11RO05/handson-iot-raspberrypi/blob/master/images/Servo%20working.png)

When these servos are commanded to move, they will move to the position and hold that position. If an external force pushes against the servo while the servo is holding a position, the servo will resist from moving out of that position. The maximum amount of force the servo can exert is called the torque rating of the servo. Servos will not hold their position forever though; the position pulse must be repeated to instruct the servo to stay in position.

### THINGS USED IN THIS PROJECT

#### HARDWARE COMPONENTS
1.	Raspberry Pi 3 (Model B)		**X1**
2.	Breadboard (Optional)			**x1**
3.	Jumper wires (Female to Female)		**X3**
4.	Servo motor				**X1**

#### SOFTWARE COMPONENTS
1.	Python 3.5 (IDLE)

### STORY
In this project we will be controlling the rotation of a servo motor using python programming. The connections are made as per the circuit diagram. The servo has 3 pins namely the ground,pulse and the supply. The rotation details is given to the servo using a slider. The slider can be varied from 0-180 degrees as that’s how much a servo can rotate. When we move the slider to a particular value the position of the servo changes accordingly. The position of the servo can be off by a few degrees. Power is supplied from the Pi to the servo. In the beginning there can be a few twitches in the motor, no need to worry it happens because the Pi sends out signals to the servo and each time the duration of the signal varies. Depending upon the duration of the signal the servo twitch will vary. Once the program is run, using the slider the servo can be controlled. If the servo is left at 180 degrees, at the next run of the program the servo will automatically come to 0 degree position. The servo can also be controlled even without the slider by sending out timed signals from the Pi to the servo with the help of program. 

<img src="https://github.com/11RO05/handson-iot-raspberrypi/blob/master/circuit-diagram/Servo.png" widht=600 height=600 align="middle">

### INSTRUCTIONS

#### Setting up the Hardware Part
1.	Insert the Micro SD card containing the Raspbian OS into the Raspberry Pi 3. (The slot for the Micro SD is at the bottom of the Pi.)
1.	Connect the Raspberry Pi 3 to a monitor (output device) with the help of a HDMI cable. (If your monitor is VGA type then you should have a HDMI to VGA converter.) 
2.	Connect the mouse and keyboard (input devices) in the USB slots provided (4 slots)
3.	Power up the Pi by connecting it to a power supply and wait for the Raspbian OS to load (This may take some time)
4.	Make the connections as per the circuit diagrams. (You can make the connections before connecting the input and output devices as well)

#### Running the program / Rotating the Servo
1.	Open the terminal and go to the required directory by using the command **cd path_of_the_directory** (example:- **cd Desktop** - *Changes the directory to Desktop*)
2.	Create a new python file in the required directory by typing **nano file_name.py** (giving the extension **.py** tells the terminal to create a python file) 
3.	When a new terminal opens, copy and paste the program code in the file_name.py and save it by using **ctrl x** and then pressing **Y** when prompted.
4.	Run the program by using the command **python file_name.py**

#### NOTE
The program code for this project is in the **src folder**. The following program codes can be used:
1. servo.py
2. servo_tk.py

*When **servo_tk.py** is run the servo can be controlled with the slider
When **servo.py** is run the servo is controlled by the duration of the pulse given*
	
