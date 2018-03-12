## LDR 
A **Photoresistor (or light-dependent resistor, LDR, or photo-conductive cell)** is a light-controlled variable resistor. The resistance of a photoresistor decreases with increasing incident light intensity. In other words, it exhibits photoconductivity. A photoresistor can be applied in light-sensitive detector circuits, and light-activated and dark-activated switching circuits.

![](https://github.com/11RO05/handson-iot-raspberrypi/blob/master/images/LDR.png)

A Photoresistor is made of a high resistance semiconductor. In the dark, a photoresistor can have a resistance as high as several mega ohms (MΩ), while in the light, a photoresistor can have a resistance as low as a few hundred ohms. If incident light on a photoresistor exceeds a certain frequency, photons absorbed by the semiconductor give bound electrons enough energy to jump into the conduction band. The resulting free electrons (and their hole partners) conduct electricity, thereby lowering resistance. The resistance range and sensitivity of a photoresistor can substantially differ among dissimilar devices. Moreover, unique photoresistors may react substantially differently to photons within certain wavelength bands.

### THINGS USED IN THIS PROJECT
#### HARDWARE COMPONENTS
1.	Raspberry Pi 3 (Model B)		**x1**
2.	Breadboard				**x1**
3.	Jumper Wires (Male to Female)	**x3**
4.	LDR					**x1**
5.  Capacitor (20V, 470µF) **x1**
#### SOFTWARE COMPONENTS
1.	Python 3.5 (IDLE)

### STORY
In this project we will be learning how an **Light Dependent Resistor** works. The connections are made as per the circuit diagram. The LDR has two neutral terminals i.e. it does not have a positive and a negative terminal. It is similar to a resistor, but instead of offering resistance to the flow of current the LDR opposes the light falling on it. In the dark the value of the LDR is very high (in Mega ohms) and with the increase in intensity of the light, the resistance of the LDR decreases gradually. The capacitor is connected in series with the LDR so that we can measure the resistance offered by the LDR sensor. A capacitor acts like a battery, it gets charged when the supply is given and discharges when the supply is cut off. One terminal of the LDR and positive terminal (bigger terminal) of the capacitor are connected to PIN 5 (GPIO 3). The other terminal of the LDR is connected to 3.3V power supply provided from the Pi and the negative terminal of the capacitor is connected to the ground.

![](https://github.com/11RO05/handson-iot-raspberrypi/blob/master/circuit-diagram/LDR.png)


### Instructions
#### Setting up the Hardware Part
1.	Insert the Micro SD card containing the Raspbian OS into the Raspberry Pi 3. (The slot for the Micro SD is at the bottom of the Pi.)
1.	Connect the Raspberry Pi 3 to a monitor (output device) with the help of a HDMI cable. (If your monitor is VGA type then you should have a HDMI to VGA converter.) 
2.	Connect the mouse and keyboard (input devices) in the USB slots provided (4 slots)
3.	Power up the Pi by connecting it to a power supply and wait for the Raspbian OS to load (This may take some time)
4.	Make the connections as per the circuit diagrams. (You can make the connections before connecting the input and output devices as well)
#### Running the program
1.	Open the terminal and go to the required directory by using the command **cd path_of_the_directory** (example:- **cd Desktop** - *Changes the directory to Desktop*)
2.	Create a new python file in the required directory by typing **nano file_name.py** (giving the extension **.py** tells the terminal to create a python file) 
3.	When a new terminal opens, copy and paste the program code in the file_name.py and save it by using **ctrl x** and then pressing **Y** when prompted.
4.	Create a text file by the name foo.txt using the command **touch foo.txt**
5.	Run the program using the code **python file_name.py**
6.	Different values from the LDR is displayed on the screen according to the amount of brightness in the room. The same is written to the file **foo.txt** along with the current date and time.
7.	Before running the program again make sure to delete the contents of the file foo.txt otherwise it will get added to the file after the previous run values.

#### NOTE
Program code for this project is in **src folder** with the name **ldr.py**. The date and time are stored in the text file with the name **foo.txt**

