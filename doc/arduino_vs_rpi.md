# Arduino vs. Raspberry Pi

<p align="center"> 
<img src="https://user-images.githubusercontent.com/35935951/36996808-b942568e-20dd-11e8-96ad-61d7ee64a5fa.jpg">
</p>



## What is Raspberry Pi?

**1.)**  The Rasperry Pi is a **microprocessor** based single-board computer (SBC).  

**2.)**  It requires an operating system (e.g. **Raspbian**-Linux distribution) to run on. And for that it requires an SD Card which acts as the Hard Drive or the main storage for the system. This feature makes a Rsapberry Pi **user friendly** :) .  

**3.)**  It can be programmed with variety of programming languages like Python, C/C++, Java etc. .  

**4.**)  It can be connected to the outside world via Bluetooth, wifi as it is having **inbuilt LAN , WiFi, HDMI supported port,USB Port** and many more.  

**5.**)  It has only digital input output pins,**no analog pins**.  

## When is Raspberry Pi a good choice??

* Your project is complex and networking is involved.  
* Your project is more like a software application and very limited hardware interaction.  
* Don’t have good knowledge of electronics.  
* Have good knowledge about Linux and softwares.  
 

## What is Arduino?

**1.)**  The Arduino is a **microcontroller** based board and a self contained chip.  

**2.)**  Arduino doesn't run an Operating System, rather runs the code given to them.  

**3.)**  It is programmed by writing the programs (using the **Arduino IDE**) on a computer and uploading the compiled code over a USB cable.  

**4.)**  Unlike Raspberry Pi, there is nothing like an Ethernet Port and Wireless connectivity available in Arduino. Although there are various shields and modules available that can help you with networking in Arduino.  

**5.)**  The arduino has a bunch of gpios that can act as a digital or analog input or output.The analog inputs let you read analog sensors like a temp sensor or a variable resistor (Arduino has **inbuilt analog to digital converter**).This feature makes it a good choice for controlling small devices like **sensors, motors, and lights**.  

## When is Arduino a good choice??

* Your project is simple, especially networking is not involved.  
* Your project is more like a electronics project where software applications are not involved, like Burglar alarm, voice controlled light.  
* your project requires you to interact with a lot of external hardware requirements.  
 
Now, all differences between Arduino and Raspberry Pi can be summarized as :  

|**Feature**|**Raspberry Pi**|**Arduino**|
|:-----------:|:----------------:|:----------:|
|**Operating System**|Linux distribution|None|
|**Clock Speed**|	700 MHz|	16 MHz|
|**Input Voltage**|5 V| 7-12 V|
|**On Board Network**|10/100 wired Ethernet RJ45	|None	|
|**Hardware design**|	Closed source|	Open source|
|**Real time**|	Hardware realtime|	In real time|
|**Inbuilt Analog to Digital Converter**|	No	|Yes|
|**Multitasking**|Yes|No|
|**Integrated Developement Environment**|Arduino|Scratch,IDLE,anything with Linux support|
