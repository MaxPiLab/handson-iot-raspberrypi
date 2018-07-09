## COMPASS
A compass is an instrument used for navigation and orientation that shows direction relative to the geographic cardinal directions (or points). Usually, a diagram called a compass rose shows the directions north, south, east, and west on the compass face as abbreviated initials. When the compass is used, the rose can be aligned with the corresponding geographic directions; for example, the "N" mark on the rose points northward. Compasses often display markings for angles in degrees in addition to (or sometimes instead of) the rose. North corresponds to 0°, and the angles increase clockwise, so east is 90° degrees, south is 180°, and west is 270°. These numbers allow the compass to show azimuths or bearings, which are commonly stated in this notation.

<img src="https://github.com/11RO05/handson-iot-raspberrypi/blob/master/New%20Sensors/Images/Compass.png" width=300 height=300>

### How does a compass work?
Long before GPS satellites and other high tech navigational aids the compass gave humans an easy and inexpensive way to navigate themselves. A compass is an extremely simple device which consists of a small lightweight magnet balanced on a nearly frictionless pivot point. The magnet is generally called a needle. One end of the needle is often coloured in some way to indicate that it points towards north. 

Earth’s core consists of molten iron and the pressure inside is so great that iron crystallizes into solid caused by the heat radiating from the core along with the rotation of the earth causes the liquid iron to move into rotational patterns. It is believed that these rotational forces in the liquid iron lead to weak magnetic forces around the axis of spin. This forms a magnet like bar inside the surface of the earth. The poles of the magnet face the opposite directions i.e. South Pole faces the north side and the North Pole faces the south side. This weak earth magnet helps the compass needle to rotate and find the true north. 

### THINGS USED IN THIS PROJECT

#### HARDWARE COMPONENTS
1.	Raspberry Pi 	**x1**
2.	GY-271		**x1**
3.	Female to Female Jumper wires	**x4**

#### SOFTWARE COMPONENTS
1.	Python 3.5 (IDLE)

### STORY
In this project we will be using a compass module to find the amount of magnetic field present in the three axes i.e. x-axis, y-axis and z-axis respectively. The compass module GY-271 also goes by the name HMC5883L. HMC5883L is a surface-mount, multi-chip module designed for low-field magnetic sensing with a digital interface for applications such as low-cost compassing and magnetometry. The HMC5883L includes high-resolution HMC118X series magneto-resistive sensors plus an ASIC containing amplification, automatic degaussing strap drivers, offset cancellation, and a 12-bit ADC that enables 1° to 2° compass heading accuracy. The HMC5883L is a 3.0×3.0x0.9mm surface mount 16-pin leadless chip carrier (LCC). Applications for the HMC5883L include Mobile Phones, Netbooks, Consumer Electronics, Auto Navigation Systems, and Personal Navigation Devices.

HMC5883L uses I2C interface to communicate with the Pi. The module consists of 5 pins out of which only four should be used for the I2C communication purpose. The 5th pin must be left open and not connected to any other pin. Since there are only 4 pins the connections for the compass becomes fairly simple. The circuit diagram and connection table will come in handy to make the connections. 

|**PIN** | **NAME** | **REMARKS** | **RPi PIN** |
|--------|----------|-------------|-------------|
| 1 | Vcc | 5V Power Supply | 2 |
| 2 | GND | Ground | 6 |
| 3 | SCL | Clock Pulse | 5 |
| 4 | SDA | Data | 3 |

<img src="https://github.com/11RO05/handson-iot-raspberrypi/blob/master/New%20Sensors/Circuit%20Diagram/Compass.png" width=500 height=500>

### INSTRUCTIONS 

#### Setting up the Hardware Part
1.	Insert the Micro SD card containing the Raspbian OS into the Raspberry Pi 3. (The slot for the Micro SD is at the bottom of the Pi.)
1.	Connect the Raspberry Pi 3 to a monitor (output device) with the help of a HDMI cable. (If your monitor is VGA type then you should have a HDMI to VGA converter.) 
2.	Connect the mouse and keyboard (input devices) in the USB slots provided (4 slots)
3.	Power up the Pi by connecting it to a power supply and wait for the Raspbian OS to load (This may take some time)
4.	Make the connections as per the circuit diagrams. (You can make the connections before connecting the input and output devices as well)

#### Running the program
1.	Click on the main menu and go to preferences. Hover the mouse over preferences and select **Raspberry Pi configuration**
2.	Enable the I2C interfacing from the interface tab of the configuration menu
3.	To check which channel the sensor is using, type the following command in the LX Terminal **sudo i2cdetect –y 1** 
4.	If you receive and error message then change the one (1) to zero (0) i.e. **sudo i2cdetect –y 0**
5.	If the sensor is detected a channel number will be allotted to the sensor in order to retrieve the information from the sensor. 
6.	Copy the [code](https://github.com/11RO05/handson-iot-raspberrypi/blob/master/New%20Sensors/src/GY271.py) provided in the GitHub repository and save it at your desired location. 
7.	Open IDLE 3.5 from the programming menu and open the program code.
8.	To run the code either press **F5** or run the program from the run menu of the IDLE window
9.	Observe the magnetic field value change as you rotate and keep the compass at all three axes. 

