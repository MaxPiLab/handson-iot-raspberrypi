## BUZZER
A **Buzzer** or **Beeper** is and audio signalling device, which may be mechanical, electromechanical, or piezoelectric (piezo for short). Typical uses of buzzers and beepers include alarm devices, timers, and confirmation of user input such as a mouse click or keystroke. The buzzer consists of an outside case with two pins to attach it to the power and ground. Inside is a piezo element which consists of a central ceramic disc surrounded by a metal, often bronze, known as the vibration disc. When the current is applied to the buzzer the ceramic disc to contract or expand. This then causes the surrounding disc to vibrate. This is the sound that is heard. When we change the frequency of the buzzer the speed of the vibrations changes which changes the speed of the resulting sound.
 
![](https://github.com/11RO05/handson-iot-raspberrypi/blob/master/images/Buzzer.png) 
 
### TYPE OF BUZZERS

#### Electromechanical
Early devices were based on an electromechanical system identical to an electric bell without the metal gong. Similarly, a relay may be connected to interrupt its own actuating current, causing the contacts to buzz. Often these units were anchored to a wall or ceiling to use it as a sounding board. The word "buzzer" comes from the rasping noise that electromechanical buzzers made.

#### Mechanical
A joy buzzer is an example of a purely mechanical buzzer and they require drivers. Other examples of them are doorbells.

#### Piezoelectric
A piezoelectric element may be driven by an oscillating electronic circuit or other audio signal source, driven with a piezoelectric audio amplifier. Sounds commonly used to indicate that a button has been pressed are a click, a ring or a beep.

### THINGS USED IN THIS PROJECT

#### HARDWARE COMPONENTS
1.	Raspberry Pi 3 (Model B)		**x1**
2.	Breadboard				**x1**
3.	Jumper Wires (Male to Female)	**x2**
4.	Buzzer					**x1**

### SOFTWARE COMPONENTS
1.	Python 3.5 (IDLE)

### STORY
In this project we are going to write a Morse code using a **Buzzer**. The connections are made as per the circuit diagram. The Buzzer consists of two legs (terminals). A plus sign has been denoted on the head of the buzzer to indicate the polarity of that particular pin, which is positive (bigger terminal). The terminal with no sign is used as the negative terminal (smaller terminal). The buzzer is mounted on the breadboard and made sure for a snug fit. The positive of the buzzer is connected to PIN 15 (GPIO 22) and the negative of the terminal is connected to the ground PIN 6 (Ground). The Raspberry Pi supplies the power to the buzzer. When the current starts flowing in the buzzer the beeping sound can be heard. This beep sound can be changed accordingly with the help of programming. The Morse code is nothing but *dots* and *dashes*. One can easily differentiate between a dot and dash. The dash is only a few milliseconds more than the dot meaning the sound for the dash on the buzzer is played for a little longer. 

![](https://github.com/11RO05/handson-iot-raspberrypi/blob/master/circuit-diagram/Buzzer.png)
 
### INSTRUCTIONS

#### Setting up the Hardware Part
1.	Insert the Micro SD card containing the Raspbian OS into the Raspberry Pi 3. (The slot for the Micro SD is at the bottom of the Pi.)
1.	Connect the Raspberry Pi 3 to a monitor (output device) with the help of a HDMI cable. (If your monitor is VGA type then you should have a HDMI to VGA converter.) 
2.	Connect the mouse and keyboard (input devices) in the USB slots provided (4 slots)
3.	Power up the Pi by connecting it to a power supply and wait for the Raspbian OS to load (This may take some time)
4.	Make the connections as per the circuit diagrams. (You can make the connections before connecting the input and output devices as well)

#### Running the Program / Making the Beeping sound
1.	Open the terminal and go to the required directory by using the command **cd path_of_the_directory** (example:- **cd Desktop** - *Changes the directory to Desktop*)
2.	Create a new python file in the required directory by typing **nano file_name.py** (giving the extension **.py** tells the terminal to create a python file) 
3.	When a new terminal opens, copy and paste the program code in the file_name.py and save it by using **ctrl x** and then pressing **Y** when prompted.
4.	To run the program use the command **python file_name.py** or **sudo python file_name.py**

#### NOTE
Program code for this project is in **src folder** with the name **buzzer.py**

