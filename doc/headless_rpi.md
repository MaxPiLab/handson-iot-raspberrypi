#   HEADLESS START OF YOUR RASPBERRY PI

## Booting your Raspberry Pi without Keybaord, HDMI  

## Things Required 

1.) Raspberry Pi 3 Model B+   
2.) 8 GB MicroSD card  
3.) SD Card reader  
4.) Power Supply for the Pi  
5.) Internet( Wi-Fi or Ethernet)

Here are the steps to give a headless start to your Raspberry Pi 

### 1.) Download the Raspberry Pi’s operating system  

Download **NOOBS** from https://www.raspberrypi.org/downloads/noobs/  

Just download the ZIP file and Extract it to a new folder.  

Then you’ll have a single .img image file that contains the operating system.  

<p align="center"> 
<img src="https://user-images.githubusercontent.com/35935951/36939676-fffec636-1f5a-11e8-8c3e-7e220a03efec.png">
</p>  

Next we’ll need a program that can write the operating system image file onto a microSD card.

### 2.) Download Win32DiskImager  

* Download the **Win32DiskImager utility** https://www.techspot.com/downloads/5361-win32-disk-imager.html  

<p align="center"> 
<img src="https://user-images.githubusercontent.com/35935951/36939678-0abe5460-1f5b-11e8-9af9-b834c87faabb.png">
</p> 

* Insert the SD card into your SD card reader and check what drive letter it was assigned. You can easily see the drive letter (for   example G:) by looking in the left column of Windows Explorer.  

* Extract the executable from the zip file and run the Win32DiskImager utility.  

* Select the image file you extracted above.  

* Select the drive letter of the SD card in the device box.   
***NOTE: Be careful to select the correct drive; if you get the wrong one you can destroy your data on the computer's hard disk! If you are using an SD Card slot in your computer (if you have one) and can't see the drive in the Win32DiskImager window, try using a cheap Adapter in a USB slot.***  

* Click Write and wait for the write to complete.  

* Exit the imager and eject the SD card.  

 You are now ready to plug the card into your Raspberry Pi.  
 
 ### 3.) Add “SSH” File to the SD Card Root  
 
Enable SSH by placing a file named “ssh” (without any extension) onto the boot partition of the SD card.  

<p align="center"> 
<img src="https://user-images.githubusercontent.com/35935951/36939814-dca280ee-1f5d-11e8-86d0-792d5609bbd5.png">
</p> 

### 4.) Boot your Pi  

Power on your Raspberry Pi and connect it to your laptop.

### 5.) Find your Pi’s IP Address  

It is possible to find the IP address of your Pi without connecting to a screen by many methods.Here is given one such method :

**NMAP COMMAND**

The nmap command (Network Mapper) is a free and open-source tool for network discovery, available for Linux, macOS, and Windows.  

To use nmap to scan the devices on your network, you need to know the subnet you are connected to. First find IP address of the computer you're using to find your Pi's IP address:  

On Windows, go to the Control Panel, then under  **Network and Sharing Center**, click **View network connections**, select your **active network connection** and click  **View status of this connection** to view the IP address.  

Now you have the IP address of your computer, you will scan the whole subnet for other devices. For example, if your IP address is `192.168.1.5`, other devices will be at addresses like `192.168.1.2`, `192.168.1.3`, `192.168.1.4`, etc.  

Now use the nmap command with the -sn flag (ping scan) on the whole subnet range. This may take a few seconds:  

`nmap -sn 192.168.1.0/24`  

Ping scan just pings all the IP addresses to see if they respond. For each device that responds to the ping, the output shows the hostname and IP address like so:  

```Starting Nmap 6.40 ( http://nmap.org ) at 2014-03-10 12:46 GMT  
Nmap scan report for hpprinter (192.168.1.2)  
Host is up (0.00044s latency).  
Nmap scan report for Gordons-MBP (192.168.1.4)  
Host is up (0.0010s latency).  
Nmap scan report for ubuntu (192.168.1.5)  
Host is up (0.0010s latency).  
Nmap scan report for raspberrypi (192.168.1.8)  
Host is up (0.0030s latency).  
Nmap done: 256 IP addresses (4 hosts up) scanned in 2.41 seconds  
Here you can see a device with hostname raspberrypi has IP address  192.168.1.8.  
```

### 6.) SSH into your Pi  

Now we need a way to access the Raspberry Pi’s command prompt. We can do this with a remote SSH client called **PuTTY**. 
PuTTY establishes an SSH connection between the Raspberry Pi and another computer.
It opens up a window that gives you access to the Raspberry Pi’s command prompt.  

Download PuTTY https://www.putty.org/  

The default credentials are:  

``` username: pi  
    password: raspberry
 ```  
 
 

<p align="center"> 
<img src="https://user-images.githubusercontent.com/35935951/36939810-d21f1d08-1f5d-11e8-9920-14b11917ec1c.png">
</p> 


### 7.) Configure your Pi  

You can now configure your Pi via `sudo raspi-config  `











