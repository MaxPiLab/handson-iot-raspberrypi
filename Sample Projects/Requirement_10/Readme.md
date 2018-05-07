## HOME SECURITY

### RASPBERRY PI CAMERA
The Raspberry Pi camera module can be used to take high-definition video, as well as stills photographs. It’s easy to use for beginners, but has plenty to offer advanced users if you’re looking to expand your knowledge. There are lots of examples online of people using it for time-lapse, slow-motion and other video cleverness. You can also use the libraries we bundle with the camera to create effects.
If you’re interested in the nitty-gritty, you’ll want to know that the module has a five megapixel fixed-focus camera that supports 1080p30, 720p60 and VGA90 video modes, as well as stills capture. It attaches via a 15cm ribbon cable to the CSI port on the Raspberry Pi. It can be accessed through the MMAL and V4L APIs, and there are numerous third-party libraries built for it, including the Picamera Python library.
The camera module is very popular in home security applications, and in wildlife camera traps. You can also use it to take snapshots.

### THINGS USED IN THIS PROJECT

#### HARDWARE COMPONENTS
1.	Raspberry Pi (Model B)		**x1**
2.	Raspberry Pi Camera		**x1**

#### SOFTWARE COMPONENTS
1.	Python 3.5 (IDLE)

### STORY
In this project we will be integrating the Picamera with the Raspberry Pi. The camera can be used to take photos and video. Since we are using the Picamera for security purposes we will be using the Picamera to take photos when motion is detected in the range of the camera module. The camera is connected to the Raspberry Pi's Camera Serial Interface (CSI) bus connector via a flexible ribbon cable. Connecting the camera is easy and is explained in the instructions part of this document. Make sure that the camera is steady before moving on to the programming part. If it is not steady then the camera itself might move and it will click photos even if no motion is detected.

<img src="https://github.com/11RO05/handson-iot-raspberrypi/blob/master/Sample%20Projects/Requirement_10/Connect-Camera-2.jpg" width=300 height=300> <img src="https://github.com/11RO05/handson-iot-raspberrypi/blob/master/Sample%20Projects/Requirement_10/Connect-Camera-1.jpg" width=400 height=300 align=right>

### INSTRUCTIONS

#### CONNECTING THE PI CAMERA
1.	Locate the camera socket on the Raspberry Pi. This is the long, thin connector behind the Ethernet socket. 
2.	Pull up the plastic locking lever on the Raspberry Pi camera socket by applying gentle even pressure to either end of the socket. The lever will pull up from the socket by a few mm.
3.	Insert the camera module flexi cable into the socket with the exposed tin contacts facing away from the Ethernet port. The cable will only push in by a few mm. Be careful to make sure the cable is pushed in evenly.
4.	Apply gentle even pressure to either end of the socket locking mechanism until the locking lever is pushed all the way back in. This bit can be a little fiddly. The cable should now be secured.

#### RUNNING THE PROGRAM CODE
1.	Make sure the camera module is firmly fixed to the Raspberry Pi.
2.	Update the software on the Pi using the command **sudo apt-get update**
3.	Install a package by typing **sudo apt-get install python-imaging-tk**
4.	Download the program code present in the repository. There are two files, **picam.py** is the library and **camera.py** is the code we will be running.
5.	Before running the code we have to enable the pi camera. This can be done by going to **preferences** under menu. Click on **interfaces** tab and enable the camera.
6.	Run the python script by pressing F5. The red light on the camera turns on and when a movement is detected the camera takes a photograph and saves it to the desired location of the user. 
 

