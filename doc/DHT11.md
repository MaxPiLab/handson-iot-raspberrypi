## DHT 11
DHT11 Temperature & Humidity Sensor features a temperature & humidity sensor complex with a calibrated digital signal output. By using the exclusive digital-signal-acquisition technique and temperature & humidity sensing technology, it ensures high reliability and excellent long-term stability. This sensor includes a resistive-type humidity measurement component and an NTC temperature measurement component, and connects to a high performance 8-bit microcontroller, offering excellent quality, fast response, anti-interference ability and cost-effectiveness.

![](https://github.com/11RO05/handson-iot-raspberrypi/blob/master/images/DHT11.png)

Each DHT11 sensors features extremely accurate calibration of humidity calibration chamber. The calibration coefficients stored in the OTP program memory, internal sensors detect signals in the process, and we should call these calibration coefficients. The single-wire serial interface system is integrated to become quick and easy. Small size, low power, signal transmission distance up to 20 meters, making it a variety of applications and even the most demanding applications. The product is 3-pin (sometimes 4) single row pin package. Convenient connection, special packages can be provided according to users need.

### How does it work??
The interlaced positive and negative traces allow a small amount of charge to be stored in each of the traces allowing the circuit to charge up a little, this is called capacitance and this is effected by the material separating the positive and negative which is mostly air. The permittivity of the air is one of the factors for calculating capacitance which is affected by the temperature and humidity.   
<img src="https://github.com/11RO05/handson-iot-raspberrypi/blob/master/images/DHT11%20(1).jpg" align="middle">
<img src="https://github.com/11RO05/handson-iot-raspberrypi/blob/master/images/DHT11%20(2).png" align="middle">

### THINGS USED IN THIS PROJECT

#### HARDWARE COMPONENTS
1.	Raspberry Pi 3 (Model B)		    **X1**
2.	Breadboard				              **X1**
3.	Jumper wires (Male to Female)		**X3**
4.	DHT11 Module			            	**X1**

#### SOFTWARE COMPONENTS
1.	Python 3.5 (IDLE)

### STORY
In this project we will be checking the temperature and humidity of the room using a DHT11 module. The module consists of an IC (Integrated Circuit) mounted on a small PCB (Printed Circuit Board). Along the edge of the IC are a couple of ceramic capacitors for decoupling and noise suppression, and some other passive components are present. A precision resistor is used for the humidity sensor. DHT11 is a 3 pin module with a Ground, Data pin for serial communication and a supply pin. The connections are made as per the circuit diagram. The setup can also be connected using female to female jumper wires. The power supply of DHT11 is 3V-5.5V. Applying greater supply to the DHT11 can result in 3% discrepancy. The module can recover to the calibrated status gradually. When the supply is connected to the Pi the led on the DHT11 lights up indicating that it has powered up. The module should be mounted at a place as far as possible from parts that may generate heat.  

![](https://github.com/11RO05/handson-iot-raspberrypi/blob/master/circuit-diagram/DHT11.png)

### INSTRUCTIONS

#### Setting up the Hardware Part
1.	Insert the Micro SD card containing the Raspbian OS into the Raspberry Pi 3. (The slot for the Micro SD is at the bottom of the Pi.)
1.	Connect the Raspberry Pi 3 to a monitor (output device) with the help of a HDMI cable. (If your monitor is VGA type then you should have a HDMI to VGA converter.) 
2.	Connect the mouse and keyboard (input devices) in the USB slots provided (4 slots)
3.	Power up the Pi by connecting it to a power supply and wait for the Raspbian OS to load (This may take some time)
4.	Make the connections as per the circuit diagrams. (You can make the connections before connecting the input and output devices as well)

#### Running the program / checking the room temperature
1.	Open the terminal and go to the required directory by using the command **cd path_of_the_directory** (example:- **cd Desktop** - *Changes the directory to Desktop*)
2.	Create a new python file in the required directory by typing **nano file_name.py** (giving the extension **.py** tells the terminal to create a python file) 
3.	When a new terminal opens, copy and paste the program code in the file_name.py and save it by using **ctrl x** and then pressing **Y** when prompted.
4.	Run the program by using the command **python file_name.py** and check the temperature displayed on the screen by the DHT11 module.

#### NOTE
Program code for this project is in **src folder** with the name **dht11_example.py**. **dht11.py** is the library used in the program **dht11_example.py** 
