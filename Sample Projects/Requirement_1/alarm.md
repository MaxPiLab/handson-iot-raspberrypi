## TEMPERATURE RISE ALARM

A heat detector is a fire alarm device designed to respond when the convected thermal energy of a fire increases the temperature of a heat sensitive element. The thermal mass and conductivity of the element regulate the rate flow of heat into the element. All heat detectors have this thermal lag. Heat detectors have two main classifications of operation, "rate-of-rise" and "fixed temperature". The heat detector is used to help in the reduction of damaged property. It is triggered when temperature increases.

DHT11 Temperature & Humidity Sensor features a temperature & humidity sensor complex with a calibrated digital signal output. By using the exclusive digital-signal-acquisition technique and temperature & humidity sensing technology, it ensures high reliability and excellent long-term stability. This sensor includes a resistive-type humidity measurement component and an NTC temperature measurement component, and connects to a high performance 8-bit microcontroller, offering excellent quality, fast response, anti-interference ability and cost-effectiveness.

### THINGS USED IN THIS PROJECT

#### HARDWARE COMPONENTS
1.	Raspberry Pi		 **x1**
2.	Breadboard		 **x1**
3.	Jumper cables 	 **x1 set of each** 
4.	DHT11 Sensor		 **x1**
5.	LED			**x1**
6.	Buzzer 			 **x1**

#### SOFTWARE COMPONENTS
1.	Python 2.7 (IDLE)
2.	Plotly

### STORY
In this project we had to create a project in which the alarm goes off when the temperature rises above 27 degree Celsius and also a light turns on. Also we had to display these values onto a graph which can be accessed remotely. All of the hardware connections were carried out on a breadboard. The components were connected to each other with the help of jumper wires of all kinds. Having a set of all three jumper wires is always wise. . A python program was written wherein the values from the DHT11 temperature sensor were plotted on a graph and uploaded onto the plotly website. To see the graph we can login to our plotly account. This can also be done remotely. When the temperature went above 27 degree Celsius and the LED turned ON and the buzzer buzzed and when the temperature dropped below 27 degree Celsius the LED and the buzzer were turned off.

![](https://github.com/11RO05/handson-iot-raspberrypi/blob/master/Sample%20Projects/Requirement_1/Circuit%20Diagram.png)


### INSTRUCTIONS
1.	Make sure the Pi is all set and is running without any problems
2.	Download the DHT11 python library and save it in a folder.
3.	In the same folder create a config.json. This will help us to access the plotly account through the program
4.	The program is written in Python2.7 as there is no plotly library available for the Python3
5.	Save the python program in the same folder as the DHT11 python library and config.json
6.	The temperature values are read from the sensor and written on to the graph
7.	The light and the buzzer turn ON if the temperature crosses 27 degree Celsius and written on to the plotly graph.
8.	The graph can be accessed remotely

### NOTE
The program code for the project is available in the same folder as this
