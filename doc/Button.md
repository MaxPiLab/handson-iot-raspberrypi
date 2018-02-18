# PUSH BUTTON

## What are Push Buttons?
A **Push Button** is a simple type of switch that controls an action in a machine or some type of process. Most of the time, the buttons are plastic or metal. The shape of the push button may conform to fingers or hands for easy use, or they may simply be flat. It all depends on the individual design. The push button can be normally open or normally closed.

![](https://github.com/11RO05/handson-iot-raspberrypi/blob/master/images/Button.png)  
  
## What are Push Buttons used for?
**Push button** switches are popular in a variety of different applications, including calculators, push button phones, and many home appliances. You can find them in the home, the office, and in industrial applications today. They can turn machines on and off, or cause the devices to perform specific actions, as is the case with calculators. In some cases, specifically for commercial and industrial usage, the buttons can connect through mechanical linkage, which means that pushing one button can actually cause another button to release.
  
## THINGS USED IN THIS PROJECT

### HARDWARE COMPONENTS
1.	Raspberry Pi 3 (Model B)		**x1**
2.	Breadboard				**x1**
3.	Jumper Wires (Male to Female)	**x3**
4.	Push Button				**x1**
5.	Resistor (4.7KΩ)			**x1**

### SOFTWARE COMPONENTS
1.	Python 3.5 (IDLE)

## STORY
In this project we will learning how to use a push button and its functions. The push button consists of 4 legs (pins). All the pins of a push button are neutral and can be connected to positive or the ground. The connections are made as per the circuit diagram. The push button is inserted in the middle of the breadboard of the breadboard for a snug fit. (It can also be inserted anywhere in the breadboard and inserting it in the middle is not mandatory). The GPIO (General Purpose Input Output) pin 19 is used as an input pin. The push button is connected to pin 19 via a resistor to which a voltage of 3.3v is supplied i.e. the push button is supplied with a high voltage. The other pin of the push button is grounded. When the button is not pushed (open condition) no current will be flowing i.e. the input pin will read **0v**. When the button is pressed (closed condition) the current will flow from the supply (3.3V) to the ground. This type of resistor is called a **Pull-down resistor**, which ensures that the current is either high or low and is not a floating (random) value. When a Pull-down resistor is used, initially the input pin will read 0v and when the button is pressed it will read a high value.

![](https://github.com/11RO05/handson-iot-raspberrypi/blob/master/circuit-diagram/Button.png)
  
## INSTRUCTIONS

### Setting up the Hardware Part
1.	Insert the Micro SD card containing the Raspbian OS into the Raspberry Pi 3. (The slot for the Micro SD is at the bottom of the Pi.)
2.	Connect the Raspberry Pi 3 to a monitor (output device) with the help of a HDMI cable. (If your monitor is VGA type then you should have a HDMI to VGA converter.) 
3.	Connect the mouse and keyboard (input devices) in the USB slots provided (4 slots)
4.	Power up the Pi by connecting it to a power supply and wait for the Raspbian OS to load (This may take some time)
5.	Make the connections as per the circuit diagrams. (You can make the connections before connecting the input and output devices as well)

### Running the Program
#### Without using the terminal
1.	To write the python program, go to the **Programming menu** and select **Python3 (IDLE)**.
2.	Open a new file python file, copy and paste the code in the new window and save it with an extension of “.py”. (**example:** *button.py*)
3.	After saving the program on the Pi, Run the program by pressing **f5** or clicking on **run** from the run menu. 
#### Using the terminal
1.	Open the terminal and create a new python file by typing **nano file_name.py** (giving the extension **.py** tells the terminal to create a python file)
2.	When a new terminal open copy and paste the program code in the file_name.py and save it by using **ctrl x** and then pressing **Y** when prompted.
3.	To run the program use the command **python file_name.py**


