## INITIAL STATE
Initial State is a data platform for time series data. We make it easy for anyone, from novice to enterprise, to send data from sensors and applications to a cloud where that data can be accessed anytime and instantly turned into something awesome - interactive real-time dashboards, charts, statistics, notifications, webhooks, etc. We are focused on creating a fantastic experience from the instant data is created until the moment data is consumed. This is how a dashboard of initial state looks like.

![](https://github.com/11RO05/handson-iot-raspberrypi/blob/master/images/Initial%20State.png)

RESTful APIs (accessed over HTTPS/TLS) provide a simple means for users to send and retrieve data. If a device or service can make an HTTPS call it can send data into initial state. A set of interactive, real time data visualizations were built to provide a unique and powerful way to visualize data. Each visualization is accessible via a modern web browser. Users can stream data from their applications and have a near instant transformation of that data into dashboard, waveforms, charts, etc.

### THINGS USED IN THIS PROJECT

#### HARDWARE COMPONENTS
1.	Raspberry Pi (Model B)	**x1**

#### SOFTWARE COMPONENTS
1.	Initial State
2.	LXTerminal

### STORY
In this project we will be learning how to use initial state to capture the data and draw the analytics. Unlike cayenne, initial state ignores the device control aspect. The functions such as reboot, shutdown etc. present in cayenne are not present in Initial State. Another advantage of Initial state is the connectivity to wide range of devices including fit bits etc. an account has to be created before we can start using the features of Initial State. The signup process is pretty basic and can be done easily. Initial state is a platform where a dashboard for any kind of project can be created. The data to initial state will be sent from the devices connected and Initial state will automatically save it in your account. This data can now be accessed even remotely. For a demo we will be uploading a sample data onto an Initial State account. This sample consists of messages and numbers. The numbers are automatically arranged in the form of a chart. The look of the chart can also be changed from a line graph to any other type of graph. The dashboard can be easily arranged and different types of graphs gives it an even better look.

### INSTRUCTIONS

#### Setting up the Hardware Part
1.	Insert the Micro SD card containing the Raspbian OS into the Raspberry Pi 3. (The slot for the Micro SD is at the bottom of the Pi.)
1.	Connect the Raspberry Pi 3 to a monitor (output device) with the help of a HDMI cable. (If your monitor is VGA type then you should have a HDMI to VGA converter.) 
2.	Connect the mouse and keyboard (input devices) in the USB slots provided (4 slots)
3.	Power up the Pi by connecting it to a power supply and wait for the Raspbian OS to load (This may take some time)

#### Using Initial State 
1.	Go to https://app.initialstate.com/register/ and create an account
2.	Install the Initial State python module on to your Pi by typing the following commands in the command window
    1.  **cd /home/pi/
    2.  \curl -sSL https://get.initialstate.com/python -o - | sudo bash**
4.	When prompted to automatically get an example script, type y. This will create a test script that we can run to ensure that we can stream data to Initial State from our Pi. You will be prompted:
    1. **Where do you want to save the example? [default: ./is_example.py]:**
6.	You will be prompted for your username and password that you just created when you registered your Initial State account. Enter both and the installation will complete.
7.	Open the example file by typing **nano is_example.py**. On line 15 (**streamer=Streamer……**) these lines creates a new data bucket named **Python Stream Example** and is associated with your account. This association happens because of the access_key=”...” parameter on that same line.
9.	Run the test script to make sure we can create a data stream to your Initial State account. Run the following:
    1. **$ python is_example.py**
11.	Go back to your Initial State account in your web browser. A new data bucket called “Python Stream Example” should have shown up on the left in your log shelf (you may have to refresh the page). Click on this bucket and then click on the Waves icon to view the test data.
12.	Keep trying new things and familiarize yourself with the concepts of initial state.


#### NOTE
The sample code for this project is present in the **src folder** with the name **is_example.py**

