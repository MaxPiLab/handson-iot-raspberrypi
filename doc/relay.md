## Relay
A relay is a simple electromechanical switch made up of an electromagnet and a set of contacts. Relays are found hidden in all sorts of devices. In fact, some of the first computer ever built used relays to implement Boolean gates. The first relays were used in long distance telegraph circuits as amplifiers: they repeated the signal coming in from one circuit and re-transmitted it on another circuit. Relays were used extensively in telephone exchanges and early computers to perform logical operations.

<img src="https://github.com/11RO05/handson-iot-raspberrypi/blob/master/images/Relay1.png" align="middle">

A relay is an electromagnetic switch operated by a relatively small electric current that can turn on or off a much larger electric current. A type of relay that can handle the high power required to directly control an electric motor or other loads is called a contactor. Solid-state relays control power circuits with no moving parts, instead using a semiconductor device to perform switching. Relays with calibrated operating characteristics and sometimes multiple operating coils are used to protect electrical circuits from overload or faults. Relays are simple switches which are operated both electrically and mechanically.

### Design of a Relay
There are only four main parts in a relay. They are:-
•	Electromagnet
•	Movable Armature
•	Switch point contacts
•	Spring

The figures given below show the actual design of a simple relay

<img src="https://github.com/11RO05/handson-iot-raspberrypi/blob/master/images/Relay.png" height=400 width=500 align="middle">
 
### How Relay works
 
When power flows through the first circuit (1), it activates the electromagnet (brown), generating a magnetic field (blue) that attracts a contact (red) and activates the second circuit (2). When the power is switched off, a spring pulls the contact back up to its original position, switching the second circuit off again.
This is an example of a "normally open" (NO) relay: the contacts in the second circuit are not connected by default, and switch on only when a current flows through the magnet. Other relays are "normally closed" (NC; the contacts are connected so a current flows through them by default) and switch off only when the magnet is activated, pulling or pushing the contacts apart. Normally open relays are the most common.

<img src="https://github.com/11RO05/handson-iot-raspberrypi/blob/master/images/How%20Relay%20Works.gif" height=400 width=400>

### THINGS USED IN THIS PROJECT
#### HARDWARE COMPONENTS
1.	Raspberry Pi 3 (Model B)		**x1**
2.	Breadboard (Optional)		**x1**
3.	Jumper Wires (Female to Female)	**x3**
4.	Relay					**x1**
5.	Incandescent Light Bulb 		**x1**
#### MISCELLANEOUS
1.	Mains (Power Supply)		**x1**
2.	Insulated Copper wire	 (to connect to the mains) 	**x2**
3.	Screwdriver 
#### SOFTWARE COMPONENTS
1.	Python 3.5 (IDLE)

### STORY
In this project we will be using Relay as a magnetic switch to turn on and turn off any appliance (bulb, motor etc.). In this case we will be switching a bulb ON and OFF. The connections are made as per the circuit diagram. **We will be dealing with high voltages in this experiment so it is advised to make the connections with extreme caution.** The connections can also be made on a breadboard or without it. If Female to Female jumper wires are unavailable then breadboard can be used to connect the relay to the Pi using the Male to Female jumper wires. One copper wire of the bulb is cut into two and is connected to the common (Chinese - 共同) and the normally open (Chinese - 常開). The other copper wire is connected to the mains. **After connecting the bulb to the mains make sure not to touch the relay in order to prevent electrocution.** When the supply is given to the relay a red light turns on indicating that the relay is working. The green light on the relay turns on when the switch inside the relay is closed i.e. the current is flowing in the relay. If the bulb is connected to the relay we can see the bulb light up. If no appliances are connected to the relay, with the help of green light, we can get to know that the current in flowing in the relay.

![](https://github.com/11RO05/handson-iot-raspberrypi/blob/master/circuit-diagram/Relay.png)

### INSTRUCTIONS
#### Setting up the Hardware Part
1.	Insert the Micro SD card containing the Raspbian OS into the Raspberry Pi 3. (The slot for the Micro SD is at the bottom of the Pi.)
1.	Connect the Raspberry Pi 3 to a monitor (output device) with the help of a HDMI cable. (If your monitor is VGA type then you should have a HDMI to VGA converter.) 
2.	Connect the mouse and keyboard (input devices) in the USB slots provided (4 slots)
3.	Power up the Pi by connecting it to a power supply and wait for the Raspbian OS to load (This may take some time)
4.	Make the connections as per the circuit diagrams. (You can make the connections before connecting the input and output devices as well)
5.	Connect the bulb to the common (center pin) and the normally open. Screw the top with the help of a screwdriver and insert the copper wire inside the relay and then tighten the screw. **(Make sure there are no loose connections)**
#### Running the program / Making the Bulb glow
1.	Open the terminal and go to the required directory by using the command **cd path_of_the_directory** (example:- **cd Desktop** - *Changes the directory to Desktop*)
2.	Create a new python file in the required directory by typing **nano file_name.py** (giving the extension **.py** tells the terminal to create a python file) 
3.	When a new terminal opens, copy and paste the program code in the file_name.py and save it by using **ctrl x** and then pressing **Y** when prompted.
4.	Run the program by using the command **python file_name.py**
5.	We can observe the bulb turn on and then turn off after a brief amount of time. 


##### NOTE
*Program code for this project is in **src** folder with the name **relay.py***




