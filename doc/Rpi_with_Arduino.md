## INTERFACING RASPBERRY Pi with ARDUINO

### Raspberry Pi
A Raspberry Pi is a credit card-sized computer originally designed for education, inspired by the 1981 BBC Micro. Creator Eben Upton's goal was to create a low-cost device that would improve programming skills and hardware understanding at the pre-university level. But thanks to its small size and accessible price, it was quickly adopted by tinkerers, makers, and electronics enthusiasts for projects that require more than a basic microcontroller (such as Arduino devices).

The Raspberry Pi is slower than a modern laptop or desktop but is still a complete Linux computer and can provide all the expected abilities that implies, at a low-power consumption level.

### Arduino
Arduino is an open source computer hardware and software company, project, and user community that designs and manufactures single-board microcontrollers and microcontroller kits for building digital devices and interactive objects that can sense and control objects in the physical and digital world. Arduino boards are available commercially in preassembled form, or as do-it-yourself (DIY) kits.

Arduino board designs use a variety of microprocessors and controllers. The boards are equipped with sets of digital and analog input/output (I/O) pins that may be interfaced to various expansion boards or Breadboards (shields) and other circuits. The boards feature serial communications interfaces, including Universal Serial Bus (USB) on some models, which are also used for loading programs from personal computers. The microcontrollers are typically programmed using a dialect of features from the programming languages C and C++. In addition to using traditional compiler toolchains, the Arduino project provides an integrated development environment (IDE) based on the Processing language project.

### THINGS USED IN THIS PROJECT

#### HARDWARE COMPONENTS
1.	Raspberry Pi (Model B)		**x1**
2.	Arduino UNO 			**x1**
3.	Jumper wires (Male to Female)  **x4**

#### SOFTWARE COMPONENTS
1.	Python 3.5 (IDLE)
2.	Arduino IDE (Integrated Development Environment)

### STORY
In this project we will be interfacing the Raspberry Pi to the Arduino i.e. we will make the two development boards to communicate with each other serially over USB. This will allow us to send data back and forth between the Pi and the Arduino, allowing the Pi to command the Arduino to do whatever you want. The two boards are going to communicate serially with each other. So we have to enable the serial communication in the Pi. Connect the Arduino to the Raspberry Pi with the help of the USB cable. When connected, boot up the Pi. Go to menu – Preferences – Raspberry Pi configuration. Once the configuration window opens go to interfaces and make sure that the **serial** is enabled. The connections are made as per the circuit diagram. For serial communication to take place the SDA and SCL pins of the Pi and the Arduino are connected together. A voltage of 3.3V is supplied to the Arduino from the Pi and the grounds of the two boards are interconnected. 

![](https://github.com/11RO05/handson-iot-raspberrypi/blob/master/circuit-diagram/RPi-with-Arduino.png)

### INSTRUCTIONS
#### Setting up the Hardware Part
1.	Insert the Micro SD card containing the Raspbian OS into the Raspberry Pi 3. (The slot for the Micro SD is at the bottom of the Pi.)
1.	Connect the Raspberry Pi 3 to a monitor (output device) with the help of a HDMI cable. (If your monitor is VGA type then you should have a HDMI to VGA converter.) 
2.	Connect the mouse and keyboard (input devices) in the USB slots provided (4 slots)
3.	Power up the Pi by connecting it to a power supply and wait for the Raspbian OS to load (This may take some time)
4.	Make the connections as per the circuit diagrams. (You can make the connections before connecting the input and output devices as well)
5.	Connect the Arduino to one of the USB ports of the Raspberry Pi with the help of the Arduino cable.

#### Setting up the software part
1.	To control the Arduino UNO board we need to program it. This can be done using the Arduino IDE. We can download the Arduino IDE on to the Raspberry Pi using the following command **sudo apt-get install arduino**
2.	Now we have to check whether the Arduino is working or not. To test the Arduino UNO board open the Arduino IDE (in the main menu under programming) and click File -> Examples->01.Basics->Blink. This will open the blink example in a new sketch window. The Blink sketch is a simple program that will turn the Arduino’s on board LED ON and OFF once a second. In the IDE, click on Tools and select your board type (Arduino UNO) under the board drop-down and the serial port under the serial port drop down (it should look like /dev/ttyACMX – where X is a number). If this happens it means that Arduino UNO is working.
3.	Program the Arduino UNO using Arduino IDE and the Pi using Python 3.5 (IDLE)

#### Making the RPi and Arduino to communicate with each other. 
1.	Open Arduino IDE (in the main menu under programming) and open a new sketch. Paste the code **(Arduino_I2C_to_RPi.ino)** provided in the sketch and save it. Compile and upload the sketch on to the Arduino UNO board. If there occurs any error then check whether the serial port of the Arduino UNO is the same or not. Also check the type of board.
2.	Open python 3.5 (IDLE) (in the main menu under programming) and create a new file. Paste the code provided in the new window and save it with an extension of **.py**
3.	Run the python code by clicking on run or by simply pressing **F5**
4.	When the code is run it will ask you to enter a value between 1-255. Once a number is entered, it will be serially communicated between the Arduino and the Raspberry Pi. 
5.	If a number greater than 255 is entered it will show the difference as Arduino UNO is a 256 bit microcontroller. If the user enters 1, then the LED on the Arduino UNO will turn ON and stay ON till 1 is given again. In this way the two boards communicate with each other. 
6.  To run the code **Arduino.ino**. open it in Arduino IDE and save it. Then compile and upload the code on to the Arduino UNO. once the code is loaded on to the board. click on serial port, a new window will open up. In this new window type the number of times you want the LED onboard the Arduino UNO to blink. 


