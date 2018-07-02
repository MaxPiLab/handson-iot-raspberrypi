## Water Flow Sensor	
The Flow sensor is a device which is used to measure the water flow. This sensor sits in line with your water line and contains a pinwheel sensor to measure how much liquid has moved through it. There's an integrated magnetic Hall Effect sensor that outputs an electrical pulse with every revolution. Flow sensors use acoustic waves and electromagnetic fields to measure the flow through a given area via physical quantities, such as acceleration, frequency, pressure and volume. The sensors are solidly constructed and provide a digital pulse each time an amount of water passes through the pipe.

<img src="https://github.com/11RO05/handson-iot-raspberrypi/blob/master/New%20Sensors/Images/WFM.jpg" width=400 height=350> <img src="https://github.com/11RO05/handson-iot-raspberrypi/blob/master/New%20Sensors/Images/WFM%20Direction.png" width=400 height=350 align=right>

Water flow sensor consists of a plastic valve body, a water rotor, and a hall-effect sensor. When water flows through the rotor, rotor rolls. Its speed changes with different rate of flow. The hall-effect sensor outputs the corresponding pulse Signal. This sensor sits in line with your water line and contains a pinwheel sensor to measure how much liquid has moved through it. There's an integrated magnetic Hall Effect sensor that outputs an electrical pulse with every revolution. The Hall Effect sensor is sealed from the water pipe and allows the sensor to stay safe and dry.

### THINGS USED IN THIS PROJECT

#### HARDWARE COMPONENTS
1.	Raspberry Pi				**x1**
2.	Breadboard				**x1**
3.	YF-S201 Water flow meter  		**x1**
4.	Jumper wires				**x1 Set of each**
5.	Resistors (4.7kΩ, 10kΩ)		**x1**

#### SOFTWARE COMPONENTS
1.	Python 3.5 (IDLE)

### STORY
In this project we will be calculating the approximate amount of the flow of water. The sensor that we are using is the YF-S201 Water Flow Meter. It has a pretty simple design. The direction of the flow of water is given on the sensor to avoid any confusion as to how to use it. The capacity of the sensor is around 1-30 litres per minute. The sensor comes with three wires: red (5-24VDC power), black (ground) and yellow (Hall Effect pulse output). There is a small impeller connected inside which rotates when the water is passed through the sensor. On the impeller is connected a small magnet which triggers the Hall Effect switch and that causes the pulses to be generated. By counting the pulses from the output of the sensor, we can easily calculate water flow. Each pulse is approximately 2.25 millilitres. **Note:** this isn't a precision sensor, and the pulse rate does vary a bit depending on the flow rate, fluid pressure and sensor orientation. It will need careful calibration if better than 10% precision is required. However, it’s great for basic measurement tasks!

The connections for this project are shown in the circuit diagram below. The resistors act as voltage dividers and restrict the flow of current. 

<img src="https://github.com/11RO05/handson-iot-raspberrypi/blob/master/New%20Sensors/Circuit%20Diagram/Water%20Flow%20Meter.png">

#### Reasons to use the Water Flow Meter
At the current rate of water usage there is a good chance that there will be difficulty in finding water for the generations to come. Huge amount of water is used in the fields for the crops to grow. When left unattended there is an unaffordable wastage of water. Using the water flow meter we can calculate the amount of water that flows through it in a particular time interval. Then we can turn on the water supply for that amount of time and turn it off after the total required water has been passed onto the field

### INSTRUCTIONS

#### Setting up the Hardware Part
1.	Insert the Micro SD card containing the Raspbian OS into the Raspberry Pi 3. (The slot for the Micro SD is at the bottom of the Pi.)
1.	Connect the Raspberry Pi 3 to a monitor (output device) with the help of a HDMI cable. (If your monitor is VGA type then you should have a HDMI to VGA converter.) 
2.	Connect the mouse and keyboard (input devices) in the USB slots provided (4 slots)
3.	Power up the Pi by connecting it to a power supply and wait for the Raspbian OS to load (This may take some time)
4.	Make the connections as per the circuit diagrams. (You can make the connections before connecting the input and output devices as well)

#### Running the program 
1.	Copy and paste the [code](https://github.com/11RO05/handson-iot-raspberrypi/blob/master/New%20Sensors/src/Flow_meter.py) provided in the GitHub repository and save it to your desired location.
2.	Open **Python 3.5 (IDLE)** from the main menu and navigate to the code and open it.
3.	Run the code by pressing **F5** or by manually clicking **Run** from the menu Run
4. On running the code you will observe a series of binary digits. That is to tell whether the sensor is rotating or not. If it shows zero in the first attempt the sensor is working just fine but if it shows a series of one's then abort the program and run it again. It should work just fine
4. Make the water to flow inside the sensor such that the impeller inside rotates and gives rise to pulses for the flow calculations.
5.	If using water for this experiment becomes a difficulty then you can blow into the sensor and make the impeller inside the sensor to rotate. It won’t be accurate but it will show the approximate values and you will get an idea as to how the sensor works.
 
