# Arduino vs. Raspberry Pi

<p align="center"> 
<img src="https://user-images.githubusercontent.com/35935951/36996808-b942568e-20dd-11e8-96ad-61d7ee64a5fa.jpg">
</p>



## What is a Raspberry Pi?

**1.)** The Rasperry Pi is a **microprocessor** based single-board computer (SBC).  

**2.)** It requires an operating system (e.g. **Raspbian**-Linux distribution) to run on. And for that it requires an SD Card which acts as the Hard Drive or the main storage for the system. This feature makes a Rsapberry Pi **user friendly** :) .  

**3.)** It can be programmed with variety of programming languages like Python, C/C++, Java etc. .  

**4.**) It can be connected to the outside world via Bluetooth, wifi as it is having **inbuilt LAN , WiFi, HDMI supported port,USB Port** and many more.  

**5.**) It has only digital input output pins,**no analog pins**.  

## When is Raspberry Pi a good choice??

If your project is very limited hardware interaction, but is slightly complex on the software side or need to be connected to the internet then you should just go with Raspberry Pi. Also, if you want to program using a variety of programming languages, then you should choose Raspberry Pi.

## Waht is Arduino?

1.) The Arduino is a **microcontroller** based board and a self contained chip.  

2.) Arduino doesn't run an Operating System, rather runs the code given to them.  

3.) It is programmed by writing the programs (using the **Arduino IDE**) on a computer and uploading the compiled code over a USB cable.  
4.) Unlike Raspberry Pi, there is nothing like an Ethernet Port and Wireless connectivity available in Arduino. Although there are various shields and modules available that can help you with networking in Arduino.  

5.) The arduino has a bunch of gpios that can act as a digital or analog input or output. The digital pins can handle something like 10 or 20 milliamps. The analog inputs let you read analog sensors like a temp sensor or a variable resistor (Arduino has **inbuilt analog to digital converter**).This feature makes it a good choice for controlling small devices like **sensors, motors, and lights**.  

4.) Arduino is hence used for development of simple embedded system applications.

Arduino is more rugged and has a much wider operating voltage range. You can easily burn your Raspberry Pi with a 0.5 V more or less than 5V needed.
## When is Arduino a good choice??

If your project requires you to interact with a lot of external hardware requirements, then you should consider using Arduino.
On the other hand, if your project requires a lot, so you have to write a complex software entire software stack or protocols, then Arduino may not be the best options.
 
All differences between Arduino and Raspberry Pi can be summarized as :  

|**Feature**|**Raspberry Pi**|**Arduino**|
|:-----------:|:----------------:|:----------:|
|**Programming Language**|	No limit	|Arduini, C/C++|
|**Processor Speed**|	700 MHz|	16MHz|
|**Internet connection very easy**|	Not easy|	Doable|
|**Hardware design**|	Closed source|	Open source|
|**Real time**|	Hardware realtime|	In real time|
|**Analog to Digital**|	No	|Yes|
