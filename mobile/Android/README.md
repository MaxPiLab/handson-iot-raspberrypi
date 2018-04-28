 Control Remote LED and Sensor Devices From IOS/Android app integrating Pubnub with Raspberry Pi.


Following are Implementations done:

Configured  the App side with Pubnub configuration: 
    Created channel and keys to Publish and Subscribe on channel.
    Used Subscribe and Publish methods send and receive message over the channel.
    The below link had been referred for the Pubnub IOS/Android SDK  configuration:
          https://www.pubnub.com/docs/tutorials/pubnub-publish-subscribe
    Once the App side Configuration was done, verified the same on the Developer Console.The steps for the same has been provided in the above link.

 Next Configured Pubnub on Raspberry pi.
    Referred the below link for Configuring Raspberry pi with initial set up and hence Pubnub install.  
        https://www.pubnub.com/blog/2015-05-27-internet-of-things-101-getting-started-w-raspberry-pi/ - For LED
        https://www.pubnub.com/blog/2015-05-27-internet-of-things-101-getting-started-w-raspberry-pi/ - For motion sensor   
    Assembled the required hardware[As Listed in the needed components folder].
    Connected the LED and Sensor devices as provided in the circuit diagrams[As listed in the circuit diagrams in needed components folder]


To do[Pending]
Have to launch the app and hence verify if the messages are sent to remote devices and hence it works accordingly.
