## myDevices 

myDevices is an Internet of Things solutions company. We accelerate IoT (Internet of Things) development and empower enterprises to quickly design, prototype, and commercialize IoT solutions.To accomplish our mission to simplify the connected world, we created Cayenne – the world’s first drag-and drop IoT project builder. Cayenne enables engineers, makers, network operators and system integrators to quickly and easily develop and deploy IoT solutions across a wide variety of verticals.

Developers can build complete and ready-to-use IoT solutions with little to no coding during the process. Cayenne contains a vast catalog of certified IoT- ready devices and connectivity options, and it allows users the ability to easily add any device into the library utilizing MQTT API. All devices in Cayenne are interoperable and benefit from features including rules engine, asset tracking, remote monitoring and control, and tools to visualize real-time and historical data.

myDevices also provides tools such as SDKs and APIs, in addition to professional services and support, for companies that want to create customized IoT products and apps that take advantage of Cayenne’s revolutionary capabilities. myDevices’ Cayenne is becoming the industry standard for building and delivering finished IoT solutions. This is how the dashboard of cayenne looks like on a monitor and a mobile phone

![](https://github.com/11RO05/handson-iot-raspberrypi/blob/master/images/myDevices.jpg)


### THINGS USED IN THIS PROJECT

#### HARDWARE COMPONENTS
1.	Raspberry Pi (Model B)	   **x1**
2.	Breadboard			   **x1**
3.	Jumper wires (Male to Female) **x2**
4.	LED (any color)		    **x1**
5.	Resistor (330 ohms)	  	    **x1**

#### SOFTWARE COMPONENTS
1.	myDevices

## STORY
In this project we will turn an LED ON and OFF using an app called Cayenne developed by myDevices. In this app we can give commands to the GPIO pins without actually programming it. Different buttons for the actuators (relay, light etc) can be created for quick and easy access. When a button is created, it appears on the dashboard. We can give it any name. The function of this button is to turn the LED ON or OFF i.e. it will turn the connected pin to high or low values which in turn will control the LED. In this case the LED is connected GPIO17 (we can connect it to any GPIO Pin). Under the GPIO menu we have to change the pin to an output pin and on clicking LOW or HIGH the bulb turn OFF or ON. The same function is done by using a button on the dashboard. In this way we can become even lazier and more technologically advanced by using mobile phones to turn the light off. 

![](https://github.com/11RO05/handson-iot-raspberrypi/blob/master/circuit-diagram/myDevices.png)

### INSTRUCTIONS
1.	Create an account on myDevices and download the cayenne app on your phone (Android / iOS)
2.	To download Cayenne on you Pi use the following commands 
    1) wget https://cayenne.mydevices.com/dl/rpi_6friq5ghuf.sh
    2) sudo bash rpi_6friq5ghuf.sh –v
3.	Download the cayenne app form google play store and install it
4.	Open the app on your phone and connect it to the Raspberry Pi using the add device button. Select RPi and it will search for the connected RPi’s on the same network and select your device.
5.	Cayenne will then install a few libraries onto the Pi which will take approximately 10mins and in between the Pi will even restart
6.	Open the Pi device visible on the app. This will take you to a dashboard which displays the amount of activity your Pi is doing and the amount of free space etc.
7.	Click on the ‘+’ sign on the upper right corner to add actuators on the dashboard. In this case we will be adding a light actuator.
8.	Give any name to the actuator and select the Integrated GPIO pin to which the LED is connected (GPIO17). 
9.	Click on Add sensor which will add the sensor onto your dashboard.
10.	Tap the light actuator button and the LED will turn ON and OFF
