## GAS SENSOR (MQ- Gas Sensor)
A gas detector is a device that detects the presence of gases in an area, often as part of a safety system. This type of equipment is used to detect a gas leak or other emissions and can interface with a control system so a process can be automatically shut down. A gas detector can sound an alarm to operators in the area where the leak is occurring, giving them the opportunity to leave. This type of device is important because there are many gases that can be harmful to organic life, such as humans or animals.

Gas detectors can be used to detect combustible, flammable and toxic gases, and oxygen depletion. This type of device is used widely in industry and can be found in locations, such as on oil rigs, to monitor manufacture processes and emerging technologies such as photovoltaic. They may be used in firefighting.

MQ Gas Sensors are widely used for measuring the gases present in the air. There are a series of these sensors and each of them is made to measure the concentration of different gases. MQ Gas sensor consists of a series of sensors namely the MQ-2, MQ-3, MQ-4, MQ-5, MQ-6, MQ-7, etc. gas sensors. This MQ series of gas sensors use a small heater inside with an electro-chemical sensor. They are sensitive for a range of gasses and are used indoors at room temperature. 
* MQ2 - Sensitive for Methane, Butane, LPG, smoke.	
* MQ3 - Sensitive for Alcohol, Ethanol, smoke	
* MQ4 - Sensitive for Methane, CNG Gas		
* MQ5 - Sensitive for Natural gas, LPG			
* MQ6 - Sensitive for LPG, butane gas			
* MQ7 - Sensitive for Carbon Monoxide		
* MQ8 – Sensitive for Hydrogen Gas			
* MQ9 - Sensitive for Carbon Monoxide, flammable gasses

<img src="https://github.com/11RO05/handson-iot-raspberrypi/blob/master/New%20Sensors/Images/MQ3%20Front%20View.png" width=350 height=300><img src="https://github.com/11RO05/handson-iot-raspberrypi/blob/master/New%20Sensors/Images/MQ3%20Back%20View.jpg" width=300 height=300 align=right>


### THINGS USED IN THIS PROJECT
#### HARDWARE COMPONENTS
1.	Raspberry Pi	          **x1**
2.	Breadboard	            **x1**
3.	MCP3008 IC 	**x1**
4.	MQ-3 Gas Sensor  **x1**
5.	3.3V to 5V TTL Logic Level Converter	**x1**
6.	Jumper wires	**x1 Set of each**

#### SOFTWARE COMPONENTS
1.	Python 3.5 (IDLE)


### STORY
In this project we will be using the MQ-3 Gas sensor to detect smoke and other gases present in our surroundings. The MQ3 gas sensor is primarily used as an alcohol sensor which is used to detect the alcohol concentration on your breath. We will be using this sensor to detect smoke. This sensor provides an analog resistive output based on smoke concentration. When the smoke exists, the sensor’s conductivity gets higher.

The MQ3 sensor uses 5V as power supply and produce an analog output and they can be programmed with python. Unlike the Arduino the Pi does not have any analog pins. So to convert the analog output of the pulse sensor we are using an analog to digital converter (ADC) i.e. MCP3008. This ADC is basically an IC which, as the name suggests, converts analog signals to digital signals. MCP3008 uses SPI interface to communicate with the Pi. The ADC consists of 16 pins. One side of the ADC gets connected to the pi via the SPI and the other side contains 8 channels (named from channel 0 - channel 7) where the analog sensors can be connected. In this case the TTL logic level converter is connected to Channel 0. You can connect it to any other channel you like. The connections of the ADC to the Pi is as follows: 

<img src="https://github.com/11RO05/handson-iot-raspberrypi/blob/master/New%20Sensors/Images/MCP3008.png" align=right width=200 height=250> 

* Pin 1 (Channel 0) – Data pin from the Logic level converter
* Pin 9 (Dgnd) - Ground
* Pin 10 (CE) – GPIO 8 (PIN 24)
* Pin 11 (MOSI) – GPIO 9 (PIN 21)
* Pin 12 (MISO) – GPIO 10 (PIN 19)
* Pin 13 (SCLK) – GPIO 11 (PIN 21)
* pin 14 (Agnd) - Ground
* Pin 15 (Vref) - 3.3V Power Supply
* Pin 16 (Vdd) - 3.3V Power Supply

Connecting 3.3V device to a 5V system can be quite challenging. The bi-directional logic level converter is a small device that safely steps down 5V signals to 3.3V and steps up 3.3V to 5V at the same time. This level converter also works with 2.8V and 1.8V. In this logic level converter you can successfully set your high and low voltages and step up and down between them safely on the same channel. Each level converter has the capability of converting 4 pins on the high side to 4 pins on the low side with two inputs and two outputs provided for each side. 
The level converter is very easy to use. The board needs to be powered from the two voltages sources (high voltage and low voltage) that your system is using. High voltage (5V for example) to the ‘HV’ pin, low voltage (3.3V for example) to ‘LV’, and ground from the system to the ‘GND’ pin. **If there are two seperate grounds for both 3.3V and 5V then make sure to ground both the pins.** The two types of the bi-directional TTL logic level converter is shown below:

<img src="https://github.com/11RO05/handson-iot-raspberrypi/blob/master/New%20Sensors/Images/TTL.jpg"> <img src="https://github.com/11RO05/handson-iot-raspberrypi/blob/master/New%20Sensors/Images/TTL1.jpg" width=200 height=200 align=right>

Since we are using three separate hardware devices to complete the project the connections can be a little tricky. The circuit diagram provided below can be very helpful in making the connections. 

<img src="https://github.com/11RO05/handson-iot-raspberrypi/blob/master/New%20Sensors/Circuit%20Diagram/Gas%20Sensor%20(Smoke).png" width=750 height=650>

### INSTRUCTIONS
#### Setting up the Hardware Part
1.	Insert the Micro SD card containing the Raspbian OS into the Raspberry Pi 3. (The slot for the Micro SD is at the bottom of the Pi.)
1.	Connect the Raspberry Pi 3 to a monitor (output device) with the help of a HDMI cable. (If your monitor is VGA type then you should have a HDMI to VGA converter.) 
2.	Connect the mouse and keyboard (input devices) in the USB slots provided (4 slots)
3.	Power up the Pi by connecting it to a power supply and wait for the Raspbian OS to load (This may take some time)
4.	Make the connections as per the circuit diagrams. (You can make the connections before connecting the input and output devices as well)

#### Running the program 
1.	Copy and paste the [code](https://github.com/11RO05/handson-iot-raspberrypi/blob/master/New%20Sensors/src/MQ3.py) provided in the GitHub repository and save it to your desired location.
2.	Open **Python 3.5 (IDLE)** from the main menu and navigate to the code and open it.
3.	Run the code by pressing **F5** or by manually clicking **Run** from the menu Run
4.	The sensor takes some time to calibrate. Once it is calibrated the sensor shows the amount of smoke it is detecting in Parts Per Million ([PPM](http://groups.molbiosci.northwestern.edu/holmgren/Glossary/Definitions/Def-P/parts_per_million.html)). 
5.	When the sensor is subjected to smoke via an incense stick the smoke value in ppm decreases thus raising the alarm. (In this case showing the message that smoke has been detected.)
6. We are only detecting the smoke using the code above. The code can be changed to measure alcohol and ethanol concentration also.


