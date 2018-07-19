## Weighing Machine using Load Cell
As hardly any scales work analogously, it is of course also possible to measure weights with a digital weighing scale. This can be used in various applications as the weight value ranges which can be measured are also almost unlimited. Only a sensor and a load cell are required, which are available for different weight ranges.

### Load Cell and its uses
A load cell is a transducer that is used to create an electrical signal whose magnitude is directly proportional to the force being measured. The various load cell types include hydraulic, pneumatic, and strain gauge.

<img src="https://github.com/11RO05/handson-iot-raspberrypi/blob/master/New%20Sensors/Images/Load%20cell.png" height=300 width=300>

Load cells are used in several types of measuring instruments such as laboratory balances, industrial scales, platform scales and universal testing machines. From 1993 the British Antarctic Survey installed load cells in glass fibre nests to weigh albatross chicks. Load cells are used in a wide variety of items such as the seven-post shaker which is often used to set up race cars

### HX711 Sensor
HX711 is a precision 24-bit analog to digital converter (ADC) designed for weigh scales and industrial control applications to interface directly with a bridge sensor. The input multiplexer selects either Channel A or B differential input to the low-noise programmable gain amplifier (PGA). Channel A can be programmed with a gain of 128 or 64, corresponding to a full-scale differential input voltage of ±20mV or ±40mV respectively, when a 5V supply is connected to AVDD analog power supply pin. Channel B has a fixed gain of 32. There is no programming needed for the internal registers. All controls to the HX711 are through the pins.

<img src="https://github.com/11RO05/handson-iot-raspberrypi/blob/master/New%20Sensors/Images/HX711.jpg" height=300 width=300>

### THINGS USED IN THIS PROJECT	

#### HARDWARE COMPONENTS
1.	Raspberry Pi 	**x1**
2.	Load Cell (2KG)	**x1**
3.	HX711 Analog to Digital converter **x1**
4.	Jumper Wires   **x1 Set of each**

#### SOFTWARE COMPONENTS
1.	Python 3.5 (IDLE)

### STORY
In this project we will be making a digital weighing machine using the Load cell and the ADC HX711. The capacity of the load cell is 2KG i.e. till 2KG’s the accuracy of the sensor will be spot on but if the weight exceeds the 2KG limit the sensor might not work properly. There are different varieties of load cell and are present for many weight ranges. The load cell is a rectangular slab which has a hole in the centre. These type of load cells are generally used to build scales and in applications where space is not limited. They offer excellent off-centre loading compensation. They are also called single point load cell because we apply weight at a single point to find the weight of that particular object. The load cell has a total of 4 wires which are to be connected to the HX711 ADC which will convert the analog output to digital.

HX711 is an analog to digital converter which takes the output from the load cell in analog form converts them into digital output. It consists of 6 pins on the right side in which we have to use only 4 pins and leave the other two open. The other part of the HX711 is connected to the raspberry pi’s GPIO pins and programmed to display the output in KG. Since the load cell used is of 2KG the accuracy beyond 2KG’s will be lost. 

The four wires from the load cell are connected as shown in the table below. Since they are not marked we will be taking their colour into consideration and connecting it accordingly to the HX711. Since HX711 can be directly connected to the Pi we can choose any GPIO pins of the Pi, just make sure to keep the same GPIO pin in the program. 

|**Load Cell wire**|**HX711 Pin**|**HX711 Pin**|**Remarks**|**RPi Pin**|
|------------------|-------------|-------------|-----------|-----------|
| Red | E+ | Vcc | 5V Power Supply | Pin 2 |
| Black | E- | SCK | Serial Clock Input | Pin16 (GPIO 23) |                                               
| Green | A- | DT | Serial Data Output | Pin 18 (GPIO 24) |
| White | A+ | Gnd | Ground | Pin 6 |

<img src="https://github.com/11RO05/handson-iot-raspberrypi/blob/master/New%20Sensors/Circuit%20Diagram/Load%20Cell.png" width=900 height=450>

### INSTRUCTIONS 

#### Setting up the Hardware Part
1.	Insert the Micro SD card containing the Raspbian OS into the Raspberry Pi 3. (The slot for the Micro SD is at the bottom of the Pi.)
1.	Connect the Raspberry Pi 3 to a monitor (output device) with the help of a HDMI cable. (If your monitor is VGA type then you should have a HDMI to VGA converter.) 
2.	Connect the mouse and keyboard (input devices) in the USB slots provided (4 slots)
3.	Power up the Pi by connecting it to a power supply and wait for the Raspbian OS to load (This may take some time)
4.	Make the connections as per the circuit diagrams. (You can make the connections before connecting the input and output devices as well)

#### Running the program 
1.	Copy and paste the [code](https://github.com/11RO05/handson-iot-raspberrypi/blob/master/New%20Sensors/src/HX711_example.py) provided in the GitHub repository and save it to your desired location. Also make sure to download the [library](https://github.com/11RO05/handson-iot-raspberrypi/blob/master/New%20Sensors/src/HX711.py) file for the same.
2.	Open **Python 3.5 (IDLE)** from the main menu and navigate to the code and open it.
3.	Run the code by pressing **F5** or by manually clicking **Run** from the menu Run
4.	Hold the load cell from one end such that it is elevated from the ground a bit. Put the weight to be measured on the other end and note if the weight is accurate or not. 

