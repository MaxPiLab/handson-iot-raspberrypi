# Introduction to GPIO in Raspberry Pi

**GPIO (general purpose input/output)** pins are one of the powerful feature of the Raspberry Pi is along the top edge of the Raspberry Pi board. Not all the pins in available on the board are GPIOs (General Purpose Input/Output). Some are power supply, others are ground connection and others are other-stuff. We can control only the GPIO pins, not the other ones.  

Here, is the GPIO pi diagram of Raspberry Pi 3 model B.

<p align="center"> 
<img src="https://user-images.githubusercontent.com/35935951/37431024-04fbc632-27fa-11e8-88cb-c80106164e48.jpeg">
</p>   

## Getting started with Raspberry Pi GPIO pins with Python programming  

Python package **RPi.GPIO** is used to introduce Raspberry Pi GPIO programming. It is already installed in Raspbian, 
the default operating system for Pi. If you are using any other operating system, the package can be installed by using the 
following command:  

`$ sudo pip install RPi.GPIO`  

## GPIO Programming workflow

### 1.  Import RPi.GPIO package  

To import the RPi.GPIO module:  

`import RPi.GPIO as GPIO`  

 ### 2. Pin numbering  
 
There are two ways of numbering the IO pins on a Raspberry Pi within RPi.GPIO.  

The **GPIO.BOARD** option specifies that you are referring to the pins by the number of the pin the plug.  

The **GPIO.BCM** option means that you are referring to the pins by the **Broadcom SOC channel** number.  

To specify which you are using using (mandatory):  

```
GPIO.setmode(GPIO.BOARD)  
  # or  
GPIO.setmode(GPIO.BCM)  
```  

### Warnings  

It is possible that you have more than one script/circuit on the GPIO of your Raspberry Pi. As a result of this, if RPi.GPIO detects 
that a pin has been configured to something other than the default (input), you get a warning when you try to configure a script. 
To disable these warnings:  

`GPIO.setwarnings(False)`  

### Setup up a channel

You need to set up every channel you are using as an input or an output.  

#### To configure a channel as an input:  

`GPIO.setup(channel, GPIO.IN)`  

(where channel is the channel number based on the numbering system you have specified (BOARD or BCM)).  

#### To set up a channel as an output:  

`GPIO.setup(channel, GPIO.OUT)`  

(where channel is the channel number based on the numbering system you have specified (BOARD or BCM)).  

You can also specify an initial value for your output channel:  

`GPIO.setup(channel, GPIO.OUT, initial=GPIO.HIGH)`  

### Setup more than one channel

You can set up more than one channel.For example:  

```
chan_list = [11,12]    # add as many channels as you want!  
                       # you can tuples instead i.e.:  
                       #   chan_list = (11,12)  
GPIO.setup(chan_list, GPIO.OUT)  
```  
#### Input

To read the value of a GPIO pin:  

`GPIO.input(channel)`  

(where channel is the channel number based on the numbering system you have specified (BOARD or BCM)).    

#### Output

To set the output state of a GPIO pin:  

`GPIO.output(channel, state)`  

(where channel is the channel number based on the numbering system you have specified (BOARD or BCM)).  

State can be 0 / GPIO.LOW / False or 1 / GPIO.HIGH / True.  

#### Output to several channels 

You can output to many channels in the same call (release 0.5.8 onwards). For example:  

```
chan_list = [11,12]                             # also works with tuples  
GPIO.output(chan_list, GPIO.LOW)                # sets all to GPIO.LOW  
GPIO.output(chan_list, (GPIO.HIGH, GPIO.LOW))   # sets first HIGH and second LOW  
```  
### Cleanup  

At the end any program, it is good practice to clean up any resources you might have used. This is no different with RPi.GPIO. 
By returning all channels you have used back to inputs with no pull up/down, you can avoid accidental damage to your RPi by 
shorting out the pins. Note that this will only clean up GPIO channels that your script has used. Note that GPIO.cleanup() also clears 
the pin numbering system in use.  

To clean up at the end of your script:  

`GPIO.cleanup()`  

It is possible that don't want to clean up every channel leaving some set up when your program exits. You can clean up individual 
channels, a list or a tuple of channels:  

```
GPIO.cleanup(channel)  
GPIO.cleanup( (channel1, channel2) )  
GPIO.cleanup( [channel1, channel2] )  
```  

####  Example to turn on and turn off two LEDs connected to Raspberry Pi 

Here, is the hardware circuit diagram and python code for turning two LEDs with Raspberry Pi

<p align="center"> 
<img src="https://user-images.githubusercontent.com/35935951/37431041-15152cca-27fa-11e8-9aaa-158c28e9eba4.png">
</p>
    
##### Pythin code
    
```
import RPi.GPIO as GPIO     # importing RPi.GPIO package  
GPIO.setmode(GPIO.BCM)      # Setting BCM Mode  
GPIO.cleanup()              # cleaning all GPIO Pins  
GPIO.setwarnings(False)  
GPIO.setup(17,GPIO.OUT)     # setting pin 17,27 as output pin  
GPIO.setup(27,GPIO.OUT)  
print "Lights on"  
GPIO.output(17,GPIO.HIGH)   # turning on pin 17,27  
GPIO.output(27,GPIO.HIGH)  

#!/usr/bin/python  
import RPi.GPIO as GPIO  
GPIO.setmode(GPIO.BCM)  
GPIO.cleanup()  
GPIO.setwarnings(False)  
GPIO.setup(17,GPIO.OUT)  
GPIO.setup(27,GPIO.OUT)  
print "Lights off"  
GPIO.output(17,GPIO.LOW)   # turning off pin 17,27  
GPIO.output(27,GPIO.LOW)  
```  
