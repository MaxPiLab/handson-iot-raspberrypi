## ALERTING WHEN VEHICLE TOO CLOSE
The technologies have become so advanced that alert systems are being installed in the vehicles for safety purposes. These systems are made up of sensors and actuators that work in collaboration with each other to produce the desired result. While parking a car the back camera can be very helpful in seeing how much distance is there in between cars. But not everyone can judge the distance just by seeing it on the camera. For this alert systems are being developed and attached in car. These systems are made such that if the car or vehicle is very close to another vehicle or an obstacle then sounds will be heard and messages can also be read on LCD screens. 


### THINGS USED IN THIS PROJECT

#### HARDWARE COMPONENTS
1.	Raspberry Pi		**x1**
2.	Breadboard 		**x1**
3.	Jumper wires		**x1 set of each**
4.	Ultrasonic sensor	**x1**
5.	Buzzer 		**x1**
6.	LCD  		**x1**

#### SOFTWARE COMPONENTS
1.	Python 3.5 (IDLE)

### STORY
In this project we will be making such a system to park our vehicles better and learn more about the technologies. Such systems can be installed in every car in the front and the rear bumper. This will not only reduce the accidents but also make us better driver overtime. An ultrasonic sensor is used to measure the distance between the two vehicles. If the distance is very less, say less than 5cm, then a beeping sound can be heard and also a visual message will appear on the LCD screen. When this distance increases then the beeping sound will turn off and the message on the LCD screen will disappear automatically. The distance value is taken from the ultrasonic sensor. With the help of a conditional statement the buzzer and the message on the LCD is controlled. If the distance is less than 5cm then the buzzer pin is set to a high value and when it is greater than 5cm it is set to a low value. The same is done with the LCD, less than 5cm a message gets printed and greater than 5cm the message disappears. 

![](https://github.com/11RO05/handson-iot-raspberrypi/blob/master/Sample%20Projects/Requirement_2/Circuit%20Diagram.png)

### INSTRUCTIONS
1.	Connect all the input and output devices to the Pi and make sure everything is running properly
2.	Make the connections as per the circuit diagram. Connect everything on a breadboard first and the supply the power from the Pi.
3.	Open the python3 IDLE interface and create a new file. Copy and paste the program code provided on the GitHub repository.
4.	The program code uses two additional modules for the LCD. Download the same and keep the two libraries and the program code in one folder. 
5.	Save the program code and run it using the F5 button or by clicking run under the run menu
6.	Keep a moveable object in front of the ultrasonic sensor. Move the object from time to time and see the distance changing on the screen.
7.	When the object is moved too close to the sensor the buzzer starts beeping and a message appears on the LCD screen.
8.	When the object is moved away from the sensor (i.e. more than 5cms) then the buzzer stops beeping and the message disappears from the LCD.

### NOTE
1. The program code is provided in the **Requirements_2** folder with the name **alarm.py**
2. The other two python files are the libraries used in the program **alert.py** make sure to download them in the same folder
