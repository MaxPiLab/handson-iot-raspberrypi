## LIGHT EMITTING DIODE (LED)

A **light-emitting diode** (LED) is a two-lead semiconductor light source. It is a P-N junction diode that emits light when activated. When a suitable voltage is applied to the leads, electrons are able to recombine with electron holes within the device, releasing energy in the form of photons. This effect is called electroluminescence, and the colour of the light (corresponding to the energy of the photon) is determined by the energy band gap of the semiconductor. LEDs are typically small (less than 1 mm) and integrated optical components may be used to shape the radiation pattern.

![](https://github.com/11RO05/handson-iot-raspberrypi/blob/master/images/LED.png) 

LEDs are made on substrate semiconductor materials such as GaAs (Gallium-Arsenide). There are two doped regions, P – positive and N – negative. When current passes through the PN junction it causes electrons to jump to higher atomic energy states. When the electrons return to the ground state, light in the form of photons is emitted. This phenomenon is called electroluminescence and it consumes very little energy since very little heat is generated. LEDs have no problematic filaments, no wear or tear, nothing is changed or altered hence they keep on working for extraordinary long lengths of time.

### THINGS USED IN THIS PROJECT:-

#### HARDWARE COMPONENTS
1.	Raspberry Pi 3 (Model B)	**x1**
2.	Breadboard  		        	**x1**
3.	LED’s				              **x2**
4.	Jumper wires		        	**x3**
5.	Resistors (1KΩ)		      	**x2**

#### SOFTWARE COMPONENTS
1.	Python 3.5 (IDLE)

### STORY
In this project we are going to light up LED with the help of Raspberry Pi and python programming. The connections are made on a breadboard with the help of jumper wires (male to female). The two terminals of the LED’s are inserted in the breadboard. The negative side (cathode – short wire) is grounded with a resistor connected to it and the positive side (anode - long wire) is connected to the GPIO (General Purpose Input Output) pins of the Raspberry Pi. Resistors are connected to the LED to limit the flow of current or for the safe operation of the LED. More current for an even a short duration of time can damage the LED. The Pi provides the required power for the LED to glow. The python code is written in the Raspberry Pi and is run. The LED’s start glowing. Make sure to connect the pins correctly otherwise it can cause damage to the GPIO pins of the Pi and replacing a damaged GPIO pin is very difficult or sometimes irreparable. 

![](https://github.com/11RO05/handson-iot-raspberrypi/blob/master/circuit-diagram/LED.png)

### INSTRUCTIONS
#### Setting up the Hardware Part
1.	Insert the Micro SD card containing the Raspbian OS into the Raspberry Pi 3. (The slot for the Micro SD is at the bottom of the Pi.)
1.	Connect the Raspberry Pi 3 to a monitor (output device) with the help of a HDMI cable. (If your monitor is VGA type then you should have a HDMI to VGA converter.) 
2.	Connect the mouse and keyboard (input devices) in the USB slots provided (4 slots)
3.	Power up the Pi by connecting it to a power supply and wait for the Raspbian OS to load (This may take some time)
4.	Make the connections as per the circuit diagrams. (You can make the connections before connecting the input and output devices as well)

#### Running the program / Making the LED glow
1.	Open the terminal and go to the required directory by using the command **cd path_of_the_directory** (example:- **cd Desktop** - *Changes the directory to Desktop*)
2.	Create a new python file in the required directory by typing **nano file_name.py** (giving the extension **.py** tells the terminal to create a python file) 
3.	When a new terminal opens, copy and paste the program code in the file_name.py and save it by using **ctrl x** and then pressing **Y** when prompted.
4.	Run the program by using the command **python file_name.py**
5.  When the program is run we can observe the LED glow. 

#### NOTE
The program codes are available in the **src folder**. The following codes can be used:
1. blink.py
2. blink_forever.py


