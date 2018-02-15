## LIGHT EMITTING DIODE (LED)

A **light-emitting diode** (LED) is a two-lead semiconductor light source. It is a P-N junction diode that emits light when activated. When a suitable voltage is applied to the leads, electrons are able to recombine with electron holes within the device, releasing energy in the form of photons. This effect is called electroluminescence, and the colour of the light (corresponding to the energy of the photon) is determined by the energy band gap of the semiconductor. LEDs are typically small (less than 1 mm) and integrated optical components may be used to shape the radiation pattern.

LEDs are made on substrate semiconductor materials such as GaAs (Gallium-Arsenide). There are two doped regions, P – positive and N – negative. When current passes through the PN junction it causes electrons to jump to higher atomic energy states. When the electrons return to the ground state, light in the form of photons is emitted. This phenomenon is called electroluminescence and it consumes very little energy since very little heat is generated. LEDs have no problematic filaments, no wear or tear, nothing is changed or altered hence they keep on working for extraordinary long lengths of time.

### THINGS USED IN THIS PROJECT:-

#### HARDWARE COMPONENTS
1.	Raspberry Pi 3 (Model B+)	**x1**
2.	Breadboard  		        	**x1**
3.	LED’s				              **x2**
4.	Jumper wires		        	**x3**
5.	Resistors (1KΩ)		      	**x2**

#### SOFTWARE COMPONENTS
1.	Python 3.5 (IDLE)

### STORY
In this project we are going to light up LED with the help of Raspberry Pi and python programming. The connections are made on a breadboard with the help of jumper wires (male to female). The two terminals of the LED’s are inserted in the breadboard. The negative side (cathode – short wire) is grounded with a resistor connected to it and the positive side (anode - long wire) is connected to the GPIO (General Purpose Input Output) pins of the Raspberry Pi. Resistors are connected to the LED to limit the flow of current or for the safe operation of the LED. More current for an even a short duration of time can damage the LED. The Pi provides the required power for the LED to glow. The python code is written in the Raspberry Pi and is run. The LED’s start glowing. Make sure to connect the pins correctly otherwise it can cause damage to the GPIO pins of the Pi and replacing a damaged GPIO pin is very difficult or sometimes irreparable. 

### INSTRUCTIONS
1.	Insert the Micro SD card containing the Raspbian OS into the Raspberry Pi 3. The slot for the Micro SD is at the bottom of the Pi.
2.	Connect the Raspberry Pi 3 to a monitor (output device) with the help of a HDMI cable. If your monitor is VGA type then you should have a HDMI to VGA 	converter. 
3.	Connect the mouse and keyboard (input devices) in the USB slots provided (4 slots)
4.	Power up the Pi by connecting it to a power supply and wait for the Raspbian OS to load (This may take some time)
5.	Make the connections as per the circuit diagrams. (You can make the connections before connecting the input and output devices as well)
6.	Go to menu and open python3 from the programming menu.
7.	Type the given code in the IDLE window.
8.	Save the file with an extension of “.py” (extension used while saving Python files)
9.	Run the program and see the LED’s turn ON and OFF.



