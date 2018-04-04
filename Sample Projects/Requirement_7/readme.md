## Communication between Raspberry Pi and Arduino
### Arduino
Arduino is an open source computer hardware and software company, project, and user community that designs and manufactures single-board microcontrollers and microcontroller kits for building digital devices and interactive objects that can sense and control objects in the physical and digital world. Arduino boards are available commercially in preassembled form, or as do-it-yourself (DIY) kits.
Arduino board designs use a variety of microprocessors and controllers. The boards are equipped with sets of digital and analog input/output (I/O) pins that may be interfaced to various expansion boards or Breadboards (shields) and other circuits. The boards feature serial communications interfaces, including Universal Serial Bus (USB) on some models, which are also used for loading programs from personal computers. The microcontrollers are typically programmed using a dialect of features from the programming languages C and C++. In addition to using traditional compiler toolchains, the Arduino project provides an integrated development environment (IDE) based on the Processing language project.

![](https://github.com/11RO05/handson-iot-raspberrypi/blob/master/Sample%20Projects/Requirement_7/Arduino.png)

### Raspberry Pi
A Raspberry Pi is a credit card-sized computer originally designed for education, inspired by the 1981 BBC Micro. Creator Eben Upton's goal was to create a low-cost device that would improve programming skills and hardware understanding at the pre-university level. But thanks to its small size and accessible price, it was quickly adopted by tinkerers, makers, and electronics enthusiasts for projects that require more than a basic microcontroller (such as Arduino devices).
The Raspberry Pi is slower than a modern laptop or desktop but is still a complete Linux computer and can provide all the expected abilities that implies, at a low-power consumption level.

![](https://github.com/11RO05/handson-iot-raspberrypi/blob/master/Sample%20Projects/Requirement_7/Raspberry%20Pi.png)

### THINGS USED IN THIS PROJECT

#### HARDWARE COMPONENTS
1.	Raspberry Pi (Any Model)	**x1**
2.	Arduino UNO			**x1**
3.	Breadboard			**x1**
4.	Jumper Wires			**x1 set of each is recommended**
5.	LDR				**x1**
6.	LED				**x1**
7.	Resistors
8.	220 ohms			**x1**
9.	10 kilo ohms			**x1**

#### SOFTWARE COMPONENTS
1.	Python 3.5 (IDLE)
2.	Arduino UNO IDE

### STORY
In this project we will see the communication between the two development boards i.e. **Raspberry Pi** and **Arduino UNO**. With the help of an LDR and LED we will determine whether it is day time or night time and this data will be sent to the Pi. The Raspberry Pi will in turn print this message so that we can understand that the communication has taken place. The data is sent from the Arduino and received by the Pi.

The connections are made on the breadboard as per the circuit diagram. The Arduino is connected to the Raspberry Pi via a USB cable. All the connections are done with respect to the Arduino, most of wires used are male to male jumper wires. The LED is connected to the digital pins as it performs only two functions i.e. ON or OFF and thus requires either a HIGH input or a LOW signal. When the signal is HIGH the LED starts glowing and when it is LOW it turns off. This controlling of the LED is dependent on the amount of light present in the room. An LDR is a device which measures the amount of light present in the room or it gives a value of the amount of light falling on it. An LDR is connected to one of the analog pins in order to receive all the minute values. If the value of the LDR drops below a certain value then the LED will turn ON and if the light falling on LDR is sufficient then the LED stays in the OFF condition. The value of LDR is chosen based on the minimum amount of light in a room and can also be changed as per your needs. 

![](https://github.com/11RO05/handson-iot-raspberrypi/blob/master/Sample%20Projects/Requirement_7/Circuit%20Diagram.png)

### INSTRUCTIONS

#### Connecting and programming the Arduino
1.	Make sure your Pi is connected properly and is running smoothly.
2.	Make the connections on the Arduino before connecting it to the Pi. 
3.	After the connections are made connect the Arduino to the Pi via a USB cable.
4.	Open the Arduino IDE and paste the code that is available by the name **LED and LDR**in the GitHub repository.
5.	Save the code to a place of your choice. Compile the program to check for any errors. If there are no errors then upload the code onto your Arduino UNO board. If there are errors then check the troubleshooting section at the end of this file.

#### Programming the Raspberry Pi
1.	Minimize the Arduino IDE and open python 3.5 IDLE window (under Programming menu).
2.	Copy and paste the **print.py** code in the new IDLE window. (This code can be found in the GitHub repository.)
3.	Run the python code print.py by pressing F5. In the output window we can observe the output of the Arduino IDE i.e. both the development boards are communicating with each other and the LED starts glowing. If any error occurs then check the troubleshooting section.
4.	All of the data is being processed in real time. This can be checked by increasing or decreasing the amount of light falling on the LDR. The output changes with the change in the amount of light falling. 

### TROUBLESHOOTING

#### For Arduino
1.	When uploading the code to the Arduino if any error occurs then check the serial port of the Arduino under the tools menu. The serial port to which the Arduino is connected should be selected.
2.	If the serial port is checked then check for the type of board. Select Arduino UNO and try uploading it again.

#### For Raspberry Pi
1.	If you are having any issues getting python to connect to the serial port then do this:
    1.	Unplug your Arduino
    2.	In the terminal window type the command **Is/dev/tty***
    3.	Plug your Arduino back in
    4.	Run the same code again
    5.	The new entry that you see is the serial port that you should be using
