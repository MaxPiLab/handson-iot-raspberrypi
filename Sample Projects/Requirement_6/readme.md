## HEALTH MONITORING
The Raspberry Pi is a series of small single-board computers developed in the United Kingdom by the Raspberry Pi Foundation to promote the teaching of basic computer science in schools and in developing countries. The original model became far more popular than anticipated, selling outside its target market for uses such as robotics. It does not include peripherals (such as keyboards, mice and cases). However, some accessories have been included in several official and unofficial bundles. 

Raspberry Pi’s are being used to drive a ridiculous number of projects ranging from fun hobby projects to mission critical functions. Despite being small, user-friendly, and inexpensive, your Pi contains an impressive number of complex subsystems that must work to keep your project running. This makes being able to monitor the health of your Pi important in many applications from ongoing maintenance of a long-term project to profiling the performance of a new prototype.

### THINGS USED IN THIS PROJECT

 #### HARDWARE COMPONENTS
1.	Raspberry Pi		**x1**

#### SOFTWARE COMPONENTS
1.	Python 2.7 (IDLE)
2.	Initial State 

## STORY
In this project we will monitoring the health of raspberry pi using a simple python script. In the script we will using the ISStreamer module which is unavailable for python3. So we will be using python 2.7 for this project. The command to download ISStreamer is given in the instructions section below. You can use that to download it. ISStreamer is a module which we will be using to upload all the data collected from the Pi onto your initial state account.

Initial State is a data platform for time series data. Using initial state we can send data from sensors and applications to a cloud where that data can be accessed anytime and instantly turned into something awesome - interactive real-time dashboards, charts, statistics, notifications, webhooks, etc. All you have to do is create and account on initial state and use their services to build new and awesome things.

We run the python script which gathers all the information from the Raspberry Pi that we need to monitor the condition in which it is. This data is then sent to your initial state account using the ISStreamer module. When you logon to you initial state account all the information about your Pi will be present in the form of a dashboard. This dashboard keeps updating every minute. If you want to monitor the Pi for longer duration then simply increase the amount of time in which the data is uploaded onto your account. This time can be changed in the python script.

![Dashboard to monitor Pi health](https://github.com/11RO05/handson-iot-raspberrypi/blob/master/Sample%20Projects/Requirement_6/Dashboard.PNG)

### INSTRUCTIONS
1.	Make sure is Pi is up and running without any problems. No sensors or actuators are to be connected in this project. Just connect the Raspberry Pi
2.	Go to https://app.initialstate.com/#/register/ and create a new account on Initial State.
3.	Install or update pip onto your Pi by using the following command
    1.	sudo apt-get install python-setuptools  
    2.	sudo easy_install pip
4.	Install the Initial State python module onto your raspberry pi by typing the following command in the LXTerminal 
    1.	**$ \curl -sSL https://get.initialstate.com/python -o - | sudo bash**
5.	At the end of the installation it will ask you whether or not you want to install an example script. Press *‘y’* to download the example script or *’n’* to not install the example script.
6.	We will use psutil (Cross-platform library for process and system monitoring in Python) to get easy access to the majority of the system information we will use to build our dashboard. To install the psutil Python library, go to a terminal on your Pi and type
    1.	**$ sudo pip install psutil**
7.	Copy and paste the python script **pi_health.py** onto your pi. The script provided in the **Requirement_6** folder in the GitHub repository.
8.	For the python script to send the data onto your initial state account, an access key is required which can be found in your initial state account under **my account** option which appears on the dropdown menu on the top right corner.
9.	Copy and paste the access key in the python script in the line **ACCESS KEY = ‘put your access key here’**. Replace the text with your access key and save the program
10.	Run the program either by using the terminal or from the IDLE window. The script will not display anything on the screen, rather it will send all the data from the pi to the initial state account every minute.
11.	Open you initial state account. Inside a new bucket with the name pi3 performance will be present. Open the bucket in tiles mode and edit the tiles in the same way as you would make a collage of photos. Change the way it looks and arrange it as per your needs. 
12.	 The tiles are real time and they keep changing every minute. you can also edit the time and change the value according to your needs.


