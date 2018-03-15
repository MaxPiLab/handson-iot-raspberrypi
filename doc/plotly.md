## Introduction to Plotly and Uploading sensor data 

Plotly, also known by its URL, Plot.ly, is a technical computing company headquartered in Montreal, Quebec, that develops online data analytics and visualization tools. Plotly provides online graphing, analytics, and statistics tools for individuals and collaboration, as well as scientific graphing libraries for Python, R, MATLAB, Perl, Julia, Arduino, and REST.

Plotly was founded by Alex Johnson, Jack Parmer, Chris Parmer, and Matthew Sundquist. The founders' backgrounds are in science, energy, and data analysis and visualization. Early employees include Christophe Viau, a Canadian software engineer and Ben Postlethwaite, a Canadian geophysicist. Plotly was named one of the Top 20 Hottest Innovative Companies in Canada by the Canadian Innovation Exchange. Plotly was featured in "start-up row" at PyCon 2013. 

Plotly offers six main products:
1.	Plot.ly has a graphical user interface for importing and analysing data into a grid and using stats tools. Graphs can be embedded or downloaded. Mainly used to make creating graphs faster and more efficient.
2.	API libraries for Python, R, MATLAB, Node.js, Julia, and Arduino and a REST API. Plotly can also be used to style interactive graphs with IPython. 
3.	Figure Converters which convert matplotlib, ggplot2, and IGOR Pro graphs into interactive, online graphs.
4.	Plotly Apps for Google Chrome. 
5.	Plotly.js is an open source JavaScript library for creating graphs and dashboards. 
6.	Plotly Enterprise an on-premises installation of Plotly. 

### THINGS USED IN THIS PROJECT

#### HARDWARE COMPONENTS
1.	Raspberry Pi (Model B)	**x1**
2.	Breadboard (if only male to female jumper wires are available)	**x1**
3.	DHT11 Temperature sensor		**x1**
4.	Jumper wires (Female to Female)	**x3**

#### SOFTWARE COMPONENTS
1.	Python 2.7 (IDLE)

### STORY
In this project we will be uploading the sensor data on the internet in order to access it from anywhere. With the help of python programming we are making a graph on plotly using the input from DHT11 Temperature sensor. The input is set to plotly which in turn takes the input data and stores it in a tabular form and simultaneously creates a graph for the same. The graph changes in real time i.e. the waves on the graph changes with every passing second or with every input given by the temperature sensor. The graphs made by plotly are highly interactive and easy to use. Firstly, we connect the DHT11 to get the temperature of the surroundings. Be careful not to put the DHT11 next to an object that produces heat as it can affect the data. The DHT11 has one pin for communication and the other two are supply and ground. An account on plotly has to be created in order to use it. We also need to create a .json file which will help plotly to understand which user from plotly is trying to communicate with it. The .json file consists of your **user-name of plotly**, **API key**, and **tokens**. Unfortunately there is no plotly library for python3. You can try to upgrade plotly and check if the module/library gets imported in the program code. 

![circuit diagram](https://github.com/11RO05/handson-iot-raspberrypi/blob/master/circuit-diagram/Plotly.png)

![plotly graph](https://github.com/11RO05/handson-iot-raspberrypi/blob/master/images/Raspberry%20Pi%20Streaming%20Temp%20Values.png)

### INSTRUCTIONS

#### Setiing up the hardware
1.	Insert the Micro SD card containing the Raspbian OS into the Raspberry Pi 3. (The slot for the Micro SD is at the bottom of the Pi.)
1.	Connect the Raspberry Pi 3 to a monitor (output device) with the help of a HDMI cable. (If your monitor is VGA type then you should have a HDMI to VGA converter.) 
2.	Connect the mouse and keyboard (input devices) in the USB slots provided (4 slots)
3.	Power up the Pi by connecting it to a power supply and wait for the Raspbian OS to load (This may take some time)
4.	Make the connections as per the circuit diagrams. (You can make the connections before connecting the input and output devices as well)

#### Running the program / Sensing and sending data to plotly.
1.	Open the Plotly website
2.	Create and account on plotly under personal and sign up using either your google account or Facebook account according to your convenience
3.	Login using the same credentials and go to settings to note down the API key and the token. If the token is not generated then generate a new one by clicking on the button
4.	Note down the following details from your account your stream token (x2), API key, and your username. Write all the three in config.json file in the following format	
**{
  	"plotly_streaming_tokens": ["your_stream_token", "another_stream_token"],
  	"plotly_api_key": "7dd3p73ljs",
  	"plotly_username": "satyadev"
	}**
5.	Save the file onto your pi where the code dht11_plotly has been stored. Make sure to include dht11.py in the same folder as that is the library of dht11
6.	Open the terminal from the programming menu and click on python 2.7 (IDLE). Open a new file and paste the code and save it in the same folder as your config.json and dht11.py
7.	Run the program by pressing F5 on the keyboard. As python has to write the data to a graph the program will take a while to run. When it does, after a few readings plotly will open automatically and we can observe the graph.
8.	The same graph will be saved onto your plotly account. Whenever you make any changes to your API key in plotly make sure to change the API key in config.json otherwise it will display error.

