## 4X4 Membrane Keypad
A membrane keyboard is a computer keyboard whose "keys" are not separate, moving parts, as with the majority of other keyboards, but rather are pressure pads that have only outlines and symbols printed on a flat, flexible surface. Very little, if any, tactile feedback is felt when using such a keyboard, and error-free blind typing is difficult.

<img src="https://github.com/11RO05/handson-iot-raspberrypi/blob/master/New%20Sensors/Images/Keypad%204x4%20Membrane.png" height=400 width=400> <img src="https://github.com/11RO05/handson-iot-raspberrypi/blob/master/New%20Sensors/Images/Back%20view.png" height=400 width=400>

Membrane keyboards work by electrical contact between the keyboard surface and the underlying circuits when key top areas are pressed. These models were used with some early 1980s home computers, enjoying wide adoption in consumer electronics devices. The keyboards are quite inexpensive to mass-produce, and are more resistant against dirt and liquids than most other keyboards. However, due to a low or non-existent tactile feedback, most people have difficulty typing with them, especially when larger numbers of characters are being typed
As can be seen from the diagram below, the membrane keyboard basically consists of three layers; two of these are membrane layers containing conductive traces. The center layer is a "spacer" containing holes wherever a "key" exists. It keeps the other two layers apart.

<img src="https://github.com/11RO05/handson-iot-raspberrypi/blob/master/New%20Sensors/Images/Working%20of%20the%20membrane%20keypad.png">

Under normal conditions, the switch (key) is open, because current cannot cross the non-conductive gap between the traces on the bottom layer. However, when the top layer is pressed down (with a finger), it makes contact with the bottom layer. The conductive traces on the underside of the top layer can then bridge the gap, allowing current to flow. The switch is now "closed", and the parent device registers a key press.

### THINGS USED IN THIS PROJECT

#### HARDWARE COMPONENTS
1.	Raspberry Pi	        **X1**
2.	Breadboard          	**X1**
3.	4X4 Membrane Keypad	  **X1**
4.	Resistors (1KΩ)		    **X4**
5.	Jumper wires		    	**X1 set of each**

#### SOFTWARE COMPONENTS
1.	Python 3.5 (IDLE)

## STORY
In this project we will be integrating the 4X4 Membrane keypad with the raspberry pi and simply typing the numbers and see them getting displayed onto the screen. The Membrane consists of 4X4 characters i.e. numbers from 0-9, the first four alphabets of the English language and special symbols such as the **#** and * . The characters of the keypad are connected in rows and columns. There are 4 pins that connect each column and 4 pins which connect each row. The membrane keypad has no internal circuitry. The keypad matrix can be attached directly to any of the GPIO pins of the raspberry pi. Since any of the pins can be used, select the pins which are far away from each other and connect the rows and column pins. This way it will be easier to know which pin is for the row and which is for the column and also this method is time saving. 

The membrane keypad is connected with a female ribbon wire. The column pins are set as output and set to a high value whereas the row pins are set as input with the help of pull up resistor i.e. the input pins are also high. When a button is pressed the input becomes low indicating the button that has been pressed. The row pins are connected to the keypad via 1kΩ resistors whereas the column pins are connected directly. As the row pins are held high with the help of a pull up resistor the GPIO pins can get damaged if there is a sudden surge of current that takes place. In order to protect the GPIO pins and the pins of the keypad resistors are used. This approach of programming can be used with any size of matrix keypad. Only the column and row connections are to be changed to a lower or higher number.

<img src="https://github.com/11RO05/handson-iot-raspberrypi/blob/master/New%20Sensors/Images/Layout.png">

The connection of the keypad to the raspberry pi consists of 8 pin connections. Let us make the connection of the row pins to the odd number side and the connection of the column pin to the even number side of the raspberry pi. The pins on the keypad can be connected in any manner i.e. either R1-R4, C1-C4 or vice versa. But they must be in ascending order. See the circuit diagram below in order to avoid any confusion.

<img src="https://github.com/11RO05/handson-iot-raspberrypi/blob/master/New%20Sensors/Circuit%20Diagram/4X4%20Keypad.png" height=500 width=600 align=middle>

### INSTRUCTIONS

#### Setting up the Hardware Part
1.	Insert the Micro SD card containing the Raspbian OS into the Raspberry Pi 3. (The slot for the Micro SD is at the bottom of the Pi.)
1.	Connect the Raspberry Pi 3 to a monitor (output device) with the help of a HDMI cable. (If your monitor is VGA type then you should have a HDMI to VGA converter.) 
2.	Connect the mouse and keyboard (input devices) in the USB slots provided (4 slots)
3.	Power up the Pi by connecting it to a power supply and wait for the Raspbian OS to load (This may take some time)
4.	Make the connections as per the circuit diagrams. (You can make the connections before connecting the input and output devices as well)

#### Running the program
1.	Download the [code](https://github.com/11RO05/handson-iot-raspberrypi/blob/master/New%20Sensors/src/numpad.py) provided in the GitHub repository and save it to your desired location.
2.	Open **Python 3.5 (IDLE)** from the main menu and navigate to the code and open it.
3.	Run the code by pressing **F5** or by manually clicking **Run** from the menu Run 
4.	Press any button on the keypad and observe the same getting displayed onto the screen. Feel free to make any changes in the code as per your wish. 

