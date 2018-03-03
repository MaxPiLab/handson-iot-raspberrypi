#   HEADLESS START OF YOUR RASPBERRY PI

## Booting your Raspberry Pi without Keybaord,Mouse,HDMI or Ethernet

## Things you’ll need:  

1.) Raspberry Pi 3 Model B+   
2.) 8 GB MicroSD card  
3.) SD Card reader  
4.) Power Supply for the Pi  
5.) Internet  

##  Step I - Downloading the tools  

### 1.) Download the Raspberry Pi’s operating system  

Download **NOOBS** from https://www.raspberrypi.org/downloads/noobs/
Just download the ZIP file and Extract it to a new folder. Then you’ll have a single .img image file that contains the operating system.  
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
 
Enable SSH by placing a file named “ssh” (without any extension) onto the boot partition of the SD card:

### 4.) Boot your Pi  

Pop your prepared SD card, power and a network cable into the Pi.

### 5.) Find your Pi’s IP Address  

To configure your Pi, you need the IP address. You can find this in your Router’s DHCP lease allocation table:

### 6.) SSH into your Pi  

Now we need a way to access the Raspberry Pi’s command prompt. We can do this with a remote SSH client called PuTTY. 
PuTTY establishes an SSH connection between the Raspberry Pi and another computer.
It opens up a window that gives you access to the Raspberry Pi’s command prompt.. Download PuTTY[https://www.putty.org/]   
The default credentials are:

username: pi
password: raspberry  

### 7.) Configure your Pi  

That’s it! You can now configure your Pi via sudo raspi-config  










