## LED (Light Emitting Diode)

LEDs are a particular type of diode that convert electrical energy into light. In fact, LED stands for “Light Emitting Diode.” (It does what it says on the tin!) And this is reflected in the similarity between the diode and LED schematic symbols:

 ![](https://github.com/11RO05/handson-iot-raspberrypi/blob/master/images/Diode%20and%20LED.png) ![](https://github.com/11RO05/handson-iot-raspberrypi/blob/master/images/LED1.png)

In short, LEDs are like tiny lightbulbs. However, LEDs require a lot less power to light up by comparison. They’re also more energy efficient, so they don’t tend to get hot like conventional lightbulbs do (unless you’re really pumping power into them). This makes them ideal for mobile devices and other low-power applications. Don’t count them out of the high-power game, though. High-intensity LEDs have found their way into accent lighting, spotlights and even automotive headlights!
In electronics, polarity indicates whether a circuit component is symmetric or not. LEDs, being diodes, will only allow current to flow in one direction. And when there’s no current-flow, there’s no light. Luckily, this also means that you can’t break an LED by plugging it in backwards. Rather, it just won’t work. The **positive side of the LED is called the “anode” and is marked by having a longer “lead,” or leg.** The other, **negative side of the LED is called the “cathode.”** Current flows from the anode to the cathode and never the opposite direction. A reversed LED can keep an entire circuit from operating properly by blocking current flow. So don’t freak out if adding an LED breaks your circuit. Try flipping it around.


### THINGS USED IN THIS PROJECT
#### HARDWARE COMPONENTS
1.	Raspberry Pi 3 (Model B)			        x1 
2.	Breadboard 					              x1
3.	Jumper Wires	(male to female)		x2
4.	LED 						                  x1
5.	Resistor (330Ω)				            x1
#### SOFTWARE COMPONENTS
1.	Git Bash
2.	WiringPi (GPIO access library for C)

### STORY
This is a simple and an easy project which will boost your confidence and encourage you to do more and more projects.
In this project we will be lighting up an LED using the Raspberry Pi and C Programming. The connections are made on a breadboard on seeing the circuit diagram. The negative terminal of the LED (cathode) is grounded through a resistor to limit the current flow for safe operation. The positive terminal of the LED (anode) is connected to PIN 7 of the GPIO (General Purpose Input Output) pins of the Raspberry Pi. Jumper wires act as an interface between the breadboard and the Pi i.e. they connect the LED and Pi. The power is supplied from the Pi to the LED. With the help of C programming the LED blinks. Figure shows how the connections are to be made. 

![](https://github.com/11RO05/handson-iot-raspberrypi/blob/master/circuit-diagram/LED%20with%20C.png)


### INSTRUCTIONS
#### Setting the Hardware Part
1.	Insert the Micro SD card containing the Raspbian OS into the Raspberry Pi 3. The slot for the Micro SD is at the bottom of the Pi.
2.	Connect the Raspberry Pi 3 to a monitor (output device) with the help of a HDMI cable. If your monitor is VGA type then you should have a HDMI to VGA converter. 
3.	Connect the mouse and keyboard (input devices) in the USB slots provided (4 slots)
4.	Power up the Pi by connecting it to a power supply and wait for the Raspbian OS to load (This may take some time)
5.	Make the connections as per the circuit diagram. (You can even make the connections before connecting the input and output devices.)

#### Setting up the Software Part
1.	Open the terminal from the taskbar and install git using the command **sudo apt-get install git-core**
2.	If there are any errors then make sure that your Pi is upto date with the latest version of raspbian. To update the Pi with the latest version of raspbian use the following commands 
a.	**sudo apt-get update**
b.	**sudo apt-get upgrade**
3.	We will make use of the **WiringPi** library in our C program to make the LED blink. WiringPi is a GPIO interface for the Raspberry Pi.
4.	To clone WiringPi using GIT we can use the following command **git clone git://git.drogon.net/wiringPi**. This will download the WiringPi library on to your Pi.
5.	After the cloning is done change the directory in the terminal to wiringPi using the command **cd wiringPi** (The name of the directory is case sensitive, enter it with precaution)
6.	After navigating to the wiringPi directory use the following command **git pull origin** to get and updated version.
7.	To build and install a new simplified script give the following command **sudo ./build** The new build script will compile and install it all for you – it does use the sudo command at one point, so you may wish to inspect the script before running it.

#### Running the Program / to make the LED blink
1.	To develop C programs with wiringPi a compiler is required. Usually, a GNU compiler collection (GCC) is already built in Linux distribution that runs on Raspberry Pi.
2.	To write the c programs :-
    1.	Open the terminal and type **nano file_name.c** , this will create a file in the directory in which you currently are.
    2.	Manually navigate to a directory without the terminal or create a new folder. In this folder create an empty file and name the file with and extension of .c
3.	To compile the c program the following command is used **gcc –Wall –o file_name file_name.c –lwiringPi**
4.	To run the c program use **sudo ./file_name**
5.	When the program is run you can see the LED blinking

#### NOTE
Program code for this project is in **src folder** with the name **blink.c**



