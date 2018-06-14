## 7 Segment Display
A seven-segment display (SSD), or seven-segment indicator, is a form of electronic display device for displaying decimal numerals that is an alternative to the more complex dot matrix displays. Seven-segment displays are widely used in digital clocks, electronic meters, basic calculators, and other electronic devices that display numerical information.

<img src="https://github.com/11RO05/handson-iot-raspberrypi/blob/master/New%20Sensors/Images/7-segment-led.png" width=300 height=300> <img src="https://github.com/11RO05/handson-iot-raspberrypi/blob/master/New%20Sensors/Images/Pin%20Diagram.png" align=right>

The seven elements of the display can be lit in different combinations to represent the Arabic numerals. Often the seven segments are arranged in an oblique (slanted) arrangement, which aids readability. In most applications, the seven segments are of nearly uniform shape and size (usually elongated hexagons, though trapezoids and rectangles can also be used), though in the case of adding machines, the vertical segments are longer and more oddly shaped at the ends in an effort to further enhance readability.

Seven-segment displays may use a liquid crystal display (LCD), a light-emitting diode (LED) for each segment, or other light-generating or controlling techniques such as cold cathode gas discharge (Panaplex), vacuum fluorescent, incandescent filaments (Numitron), and others. For gasoline price totems and other large signs, vane displays made up of electromagnetically flipped light-reflecting segments (or "vanes") are still commonly used. An alternative to the 7-segment display in the 1950s through the 1970s was the cold-cathode, neon-lamp-like nixie tube. Starting in 1970, RCA sold a display device known as the Numitron that used incandescent filaments arranged into a seven-segment display.



### THINGS USED IN THIS PROJECT

#### HARDWARE COMPONENTS
1.	Raspberry Pi 	**x1**
2.	Breadboard	**x1**
3.	7 Segment Display	**x1**
4.	Jumper wires (Male to Female)	**x9**
5.	Resistors (1KΩ)	**x8**

#### SOFTWARE COMPONENTS
1.	Python 3.5 (IDLE)

### STORY
In this tutorial, we are going to do Raspberry Pi 7 segment display interfacing. Seven Segment displays are the cheapest for a display unit. A couple of these segments stacked together could be used to display temperature, counter value etc. We will connect the 7 segment display unit to GPIO of Pi and control them to display digits accordingly. After that we will write a program in PYTHON for seven segment display to counts from 0-9 and resets itself to zero and does that till a keyboard interrupt is given. 

There are different types and sizes of 7 Segment Displays. Basically there are two types of 7 Segment, Common Anode type (Common Positive or Common VCC) and Common Cathode type (Common Negative or Common Ground).
Common Anode (CA): In this all the Negative terminals (cathode) of all the 8 LEDs are connected together (see diagram below), named as COM. And all the positive terminals are left alone.
Common Cathode (CC): In this all the positive terminals (Anodes) of all the 8 LEDs are connected together, named as COM. And all the negative thermals are left alone.

<img src="https://github.com/11RO05/handson-iot-raspberrypi/blob/master/New%20Sensors/Images/Internal%20connections%20of%207%20Seg.png">

The 7 segment consists of 10 pins i.e. 5 pins on each side. The middle pin on both the side can be considered as the common positive or the common negative. To determine which type of 7 segment display you are having connect the common to the GND or 3.3V. In whichever case the red LED’s of the display light up determines the type of your display. The resistors are used to limit the flow of current to the display so that it does not get damaged. You can even use it without resistors and it will work just fine. 

The connections are fairly simple. The pin on the display are numbered from 1-10 as there are 10 pins and each of these pins has a unique alphabet attached to it. You must have noticed the dot on the display by now. The dot is there in case we want to use decimal numbers. It won’t be possible just with one display. So if we use two displays together the dot can come in handy. The dot is controlled by the PIN5 or h or Dot Point (DP). The circuit diagram given below will be helpful in connecting. Given below are the pin numbers for the connection of the 7 segment display to the raspberry Pi.

|**7 Segment PIN**|**RPi Broadcom SOC channel**|
|-----------------|----------------------------|
| 1 or e | GPIO21 |
| 2 or d | GPIO20 |
| 4 or c | GPIO16 |
| 5 or h or dp | GPIO12 |
| 6 or b | GPIO6 |
| 7 or a | GPIO13 |
| 9 or f | GPIO19 |
| 10 or g| GPIO26 |
| 3 or 8 | Gnd or 3.3V |

<img src="https://github.com/11RO05/handson-iot-raspberrypi/blob/master/New%20Sensors/Circuit%20Diagram/7%20Segment%20Display.png">

### INSTRUCTIONS

#### Setting up the Hardware Part
1.	Insert the Micro SD card containing the Raspbian OS into the Raspberry Pi 3. (The slot for the Micro SD is at the bottom of the Pi.)
1.	Connect the Raspberry Pi 3 to a monitor (output device) with the help of a HDMI cable. (If your monitor is VGA type then you should have a HDMI to VGA converter.) 
2.	Connect the mouse and keyboard (input devices) in the USB slots provided (4 slots)
3.	Power up the Pi by connecting it to a power supply and wait for the Raspbian OS to load (This may take some time)
4.	Make the connections as per the circuit diagrams. (You can make the connections before connecting the input and output devices as well)

#### Running the Program
1.	Copy the [code](https://github.com/11RO05/handson-iot-raspberrypi/blob/master/New%20Sensors/src/7Segment.py) provide in the GitHub repository and paste it in the python 3.5 (IDLE) window. 
2.	Save the program. The comments in the program make it easier to understand the program. Feel free to make any changes to the program. 
3.	Run the program by pressing **F5** or by selecting run from the run menu.
4.	Observe the number count on the 7 segment display increase from 0-9 in an infinite loop.
5.	Press **Ctrl+C** to stop the counting. 
