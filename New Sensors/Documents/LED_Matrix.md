## MAX7219 LED MATRIX
A Dot-Matrix Display is a display device which contains light emitting diodes aligned in the form of matrix. This Dot matrix displays are used in applications where Symbol, Graphic, Characters, Alphabets, Numerals are need to be displayed together in static as well as Scrolling motion. Dot Matrix Display is manufactured in various dimensions like 5x7, 8x8, 16x8, 128x16, and 128x32 and 128x64 where the numbers represent LED's in rows and columns, respectively. Also these displays comes in different colours such as Red, Green, Yellow, Blue, Orange, and White.

<img src="https://github.com/11RO05/handson-iot-raspberrypi/blob/master/New%20Sensors/Images/MAX7219%20LED%20Matrix.jpg" height=300 width=400>

In Dot matrix display, multiple LED's are wired together in rows and columns, in order to minimize the number of pins required to drive them. The matrix pattern is made either in row anode-column cathode or row cathode-column anode pattern. In row anode-column cathode pattern, the entire row is anode while all columns serve as cathode which is shown below and it is vice-versa in row cathode-column anode pattern.

<img src="https://github.com/11RO05/handson-iot-raspberrypi/blob/master/New%20Sensors/Images/LED_Arrangements.png" height=300 width=500>

In an 8×8 matrix, the LED's would need 64 I/O pins, one for each LED pixel. By wiring all the anodes together in rows (R1 through R8), and cathodes in columns (C1 through C8), the required number of I/O pins is reduced to 16. Each LED is addressed by its row and column number. Characters can be displayed by fast scanning of either rows or columns. To display a character, the row and column pins should be pulled low and high according to that character. For example, the row and column pins should be enabled as per the table given below to display a character 'M' in which the red marks denotes that led is on.

<img src="https://github.com/11RO05/handson-iot-raspberrypi/blob/master/New%20Sensors/Images/Character%20M.jpg">

### THINGS USED IN THIS PROJECT

#### HARDWARE COMPONENTS
1.	Raspberry Pi	**X1**
2.	MAX7219 LED Matrix 		**X1**
3.	Female to Female Jumper wires	**X5**

#### SOFTWARE COMPONENTS
1.	Python 3.5 (IDLE)

## STORY
In this project we will displaying characters onto the LED Matrix using the MAX7219 IC. The IC will be programmed with Python3.5. The LED Matrix consists of 64 Red coloured LED’s connected in the form of 8X8 matrix. The white coloured dots on the matrix are the LED’s. These LED’s in turn are connected to the MAX7219 IC. The IC is connected to the rows and columns of LED’s. To control the LED Matrix we can control the IC MAX7219 and light the LED’s according to our wish. The LED Matrix uses SPI communication to interact with the raspberry pi.

The connections for the LED Matrix is easy to do as there are only 5 pins present. As the matrix uses SPI communication the SPI pins of the pi are used. Out of the 5 pins present 3 are used to connect to the SPI pins and the other two are ground and power supply. The connections are as follows:

| **PIN** | **NAME** | **REMARKS** | **RPi PIN** | **RPi Broadcom SOC Channel** |
|-------|--------|-----------|-----------|----------------------------|
| 1 | Vcc | +5V Power | 2 | 5V|
| 2 | GND | Ground | 6 | Ground |
| 3 | Din | Data In | 19 | GPIO 10 (MOSI) |
| 4 | CS | Chip Select | 24 | GPIO 8 (SPI CS0) |
| 5 | CLK | Clock | 23 | GPIO 11 (SPI CLK) |


<img src="https://github.com/11RO05/handson-iot-raspberrypi/blob/master/New%20Sensors/Circuit%20Diagram/MAX7219%20LED%20Matrix.png" height=400 width=550 align=middle>

When the Pi is powered up after the connections, the program is run and the LED Matrix displays the characters and symbols on the matrix. The speed of the scrolling can be changed, change in the font style and font size can be made in the program.

### Using more than one LED Matrix
If you notice the LED Matrix carefully the other end of matrix consists of 4 output pins and it is called the header. These pins can be used to connect to other LED Matrix. To do so the output pins of the first LED Matrix must be connected to the input of the second matrix. The Dout of the first matrix must be connected to the Din of the second matrix. The other pins are connected to the pi via the first matrix i.e. it is shorted. The pins of the first matrix are then connected to the respective pins on the raspberry pi. 

<img src="https://github.com/11RO05/handson-iot-raspberrypi/blob/master/New%20Sensors/Images/Multiple%20Matrxi%20connected.png" height=300 width=500>

### INSTRUCTIONS

#### Setting up the Hardware Part
1.	Insert the Micro SD card containing the Raspbian OS into the Raspberry Pi 3. (The slot for the Micro SD is at the bottom of the Pi.)
1.	Connect the Raspberry Pi 3 to a monitor (output device) with the help of a HDMI cable. (If your monitor is VGA type then you should have a HDMI to VGA converter.) 
2.	Connect the mouse and keyboard (input devices) in the USB slots provided (4 slots)
3.	Power up the Pi by connecting it to a power supply and wait for the Raspbian OS to load (This may take some time)
4.	Make the connections as per the circuit diagrams. (You can make the connections before connecting the input and output devices as well)

#### Setting up the required drivers/libraries for the program
1.	The program uses some special libraries, such as **luma**, that needs to be installed.
2.	Go to the LX-Terminal and type the following command **git clone https://github.com/rm-hull/max7219.git**
3.	A new folder by the name of *max7219* will be created in the root folder. Navigate to the folder using the command **cd max7219**
4.	Once the directories have changed, install the required files using the command **sudo python setup.py install**
5.	Once the installation is complete. Follow the steps to run the program that are given below

#### Running the program
1.	Download the [code](https://github.com/11RO05/handson-iot-raspberrypi/blob/master/New%20Sensors/src/matrix_demo.py) provided in the GitHub repository and save it to your desired location.
2.	Open **Python 3.5 (IDLE)** from the main menu and navigate to the code and open it.
3.	Run the code by pressing **F5** or by manually clicking **Run** from the menu Run 
4.	Observe the characters that get displayed on the LED Matrix. Feel free to change the program as per you needs. Have fun..!




