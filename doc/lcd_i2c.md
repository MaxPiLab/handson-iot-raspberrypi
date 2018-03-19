## LCD (LIQUID CRYSTAL DISPLAY)
A liquid-crystal display (LCD) is a flat-panel display or other electronically modulated optical device that uses the light-modulating properties of liquid crystals. Liquid crystals do not emit light directly, instead using a backlight or reflector to produce images in colour or monochrome. LCDs are available to display arbitrary images (as in a general-purpose computer display) or fixed images with low information content, which can be displayed or hidden, such as pre-set words, digits, and 7-segment displays, as in a digital clock. They use the same basic technology, except that arbitrary images are made up of a large number of small pixels, while other displays have larger elements.

<img src="https://github.com/11RO05/handson-iot-raspberrypi/blob/master/images/LCD.png" height=200 width=400> <img src="https://github.com/11RO05/handson-iot-raspberrypi/blob/master/images/I2C.png" height=200 width=400 >

### What is I2C??
The I2C (Inter-IC) bus is a bi-directional two-wire serial bus that provides a communication link between integrated circuits (ICs). Phillips introduced the I2C bus 20 years ago for mass-produced items such as televisions, VCRs, and audio equipment. Today, I2C is the de-facto solution for embedded applications.
There are three data transfer speeds for the I2C bus: standard, fast-mode, and high-speed mode. Standard is 100 Kbps. Fast-mode is 400 Kbps, and high-speed mode supports speeds up to 3.4 Mbps. All are backward compatible. The I2C bus supports 7-bit and 10-bit address space devices and devices that operate under different voltages.

<img src="https://github.com/11RO05/handson-iot-raspberrypi/blob/master/images/LCD-I2C.png" height=200 width=400>

### THINGS USED IN THIS PROJECT

#### HARDWARE COMPONENTS
1.	Raspberry Pi (Model B)			**x1**
2.	Breadboard (Optional)			**x1**
3.	Jumper Wires	(Female to Female)		**x4**
4.	LCD 						**x1**
5.	I2C Module					**x1**

#### SOFTWARE COMPONENTS
1.	Python 3.5 (IDLE)

## STORY
In this project we will be displaying text messages onto our LCD screen using an I2C module. The I2C module helps the Integrated Circuits to interact with each other and makes our connection much easier. The 16x2 LCD screen consists of 16 pins, when the I2C module is connected the number of connections drops down to 4 which makes it simpler to connect. Then connecting the LCD to any type of development board becomes easier. In this case, it will become easier to connect to the Raspberry Pi. 
The connections are made as per the circuit diagram. The couple of GPIO pins of the Pi are designated to perform the **SDA (serial data)** and **SCL (serial clock)** functions. GPIO2 (PIN 3) and GPIO3 (PIN 5) are used to perform the SDA and SCL functions for the Pi. A 5V supply is given to the LCD to light up. If a 3.3V supply is given then the brightness (backlight) of the LCD display is less. The LCD screen displays a total of 16 characters in 2 rows and hence the name 16x2 LCD display. 

![](https://github.com/11RO05/handson-iot-raspberrypi/blob/master/circuit-diagram/LCD.png)

### INSTRUCTIONS

#### Setting up the hardware part
1.	Insert the Micro SD card containing the Raspbian OS into the Raspberry Pi 3. The slot for the Micro SD is at the bottom of the Pi.
2.	Connect the Raspberry Pi 3 to a monitor (output device) with the help of a HDMI cable. If your monitor is VGA type then you should have a HDMI to VGA converter. 
3.	Connect the mouse and keyboard (input devices) in the USB slots provided (4 slots)
4.	Power up the Pi by connecting it to a power supply and wait for the Raspbian OS to load (This may take some time)
5.	Make the connections as per the circuit diagram. (You can even make the connections before connecting the input and output devices.)

#### Running the program / Displaying message on LCD 
1.	Open the terminal and go to the required directory by using the command **cd path_of_the_directory** (example:- **cd Desktop** - *Changes the directory to Desktop*)
2.	Create a new python file in the required directory by typing **nano file_name.py** (giving the extension **.py** tells the terminal to create a python file) 
3.	When a new terminal opens, copy and paste the program code in the file_name.py and save it by using **ctrl x** and then pressing **Y** when prompted.
4.	Run the program by using the command **python file_name.py**
5.	When the program is run we can see that the message gets displayed on the screen

#### NOTE
Program code for this project is in **src folder** with the name **lcd_i2c.py**
