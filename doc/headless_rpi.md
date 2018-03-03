#   HEADLESS START OF YOUR RASPBERRY PI

## Booting your Raspberry Pi without Keybaord,Mouse,HDMI or Ethernet

## Things you’ll need:  

1.) Raspberry Pi 3 Model B  
2.) 8GB MicroSD card  
3.) Card reader  
4.) Power Supply for the Pi  
5.) 4 GB USB Stick (Optional)
6.) Internet  

##  Step I - Downloading the tools  

### 1.) Download the Raspberry Pi’s operating system  

Just download the ZIP file and Extract it to a new folder. Then you’ll have a single .img image file that contains the operating system.

### 2.) Download Win32DiskImager  

Next we’ll need a program that can write the operating system image file onto a microSD card.
We’ll use Win32DiskImager to do that, so download and install it.  

### 3.) Download PuTTY

Now we need a way to access the Raspberry Pi’s command prompt. We can do this with a remote SSH client called PuTTY. 
PuTTY establishes an SSH connection between the Raspberry Pi and another computer.
It opens up a window that gives you access to the Raspberry Pi’s command prompt. Download and install PuTTY to your PC.  

### 4.) Download Advanced IP Scanner

We’ll also need a way to find the local IP address of your Raspberry Pi when it’s connected to your router via the ethernet cable. 
There are lots of ways to do this, but c is pretty easy to use. 
It will scan your home network and list all connected devices and their local IP addresses.  

## Step II - WRITE THE RASPBIAN OPERATING SYSTEM TO THE MICROSD CARD  

Now that we have everything we need, let’s write the operating system image to the microSD card.

Insert a blank microSD card into your computer using the SD card adapter. 
Then open Win32DiskImager, and select the operating system image file that was extracted earlier by clicking on the little folder icon:  

Next, select the drive that has the microSD card from the drop-down list below “Device”:

Now click “Write” on the bottom of the window. 
This will take from 1 to 15 minutes depending on your computer and the size of your microSD card:

Wait for the process to complete:

All you need to do is create an empty file called “SSH” and place it in the root partition of the SD card. 
The file should have no extensions like “.txt” or “.doc”. 
The easiest way to do this is to open up a text editor like Notepad and save the blank page as “SSH.txt”. 
Close the text editor, then rename the file to delete the “.txt” extension. 
After that, move the file to the top level folder of the SD card (the root partition).

Now you can eject the SD card from your computer and insert it into your Pi.  

### Step III- ESTABLISH AN SSH CONNECTION TO YOUR RASPBERRY PI  

Connect the Pi to your internet router with an ethernet cable, then plug in the power cord so it boots up.

Now we need to find out the local IP address your router has assigned to the Pi. 
Open up Advanced IP Scanner and click “Scan” in the upper left hand area of the window. 
A list of the connected devices and their local IP addresses will be generated:  

Write down the IP address for the device that says Raspberry Pi Foundation in the “Manufacturer” column. 
In my case it’s 10.0.0.105.

Now it’s time to connect to the Pi. Open up PuTTY, and enter the local IP address into the “Host Name” field:  

Now click “Open” to initiate the connection.

On the first connection attempt, a security warning will appear. Just press “Yes”since you’re connecting to your own Pi:

If the SSH connection is successful you’ll be greeted with the login prompt of your Raspberry Pi:  

If this is your first login and you haven’t changed the username or password yet, enter pi for the username, 
and raspberry as the password.

Now you’re logged in to your Raspberry Pi via SSH:   

At this point, it’s a good idea to configure your Raspberry Pi by entering sudo raspi-config to enter the configuration settings menu:  

This is where you can change all of the default settings for Raspbian, and do other useful tasks like expand the file system and 
overclock the processor.

Now that SSH is set up, the next step is setting up WiFi and establishing a remote desktop connection so you can access the Pi’s desktop environment. 
This tutorial will walk you through that:































As mentioned, I’m using Raspbian Jessie. You need to download the image from this site first.

If you’re using Linux, you’re good to go. Skip to section 2. If you’re using Windows, continue below. If you’re using Mac,
most of these instructions would work for you, but some of the tools, but you’ll have to make a best-guess about it.

If you’re using Windows, you need Win32DiskImager to write the raspbian image onto your MicroSD card.
I tried using unetbootin cause I’m smart (citation needed), but it ended up creating an unusable disk.
So just go by the official guidelines and use Win32DiskImager.

If you’re on a Mac, the official page might be your best resource.

Since we need our Pi to connect to the WiFi on boot, we need to configure some connection information into it before it starts up. 
Since Win32DiskImager creates an ext4 partition that doesn’t work on Windows, you’ll need a Linux machine, or VM to help you with making 
some changes to the files on your MicroSD card. I downloaded Tahrpup 6.0, a Puppy Linux distro from here for that job.
Look for the tahr64-6.0.5.iso file. Puppy Linux provides a “live” ISO which doesn’t need installation to run,
and is pretty clean - doesn’t leave junk on your disks.

Go ahead and download unetbootin as well, as you’ll need it to create a bootable disk of your PuppyLinux if you don’t want to run it as a 
VM. I have Hyper-V on my machine and it’s a pain to get it to work with USB sticks.  

## Step II- Installing the image
The official page is pretty detailed on how to install the image onto your SD card, so go ahead and do that.  

## Step III- Editing files on your MicroSD card
Once you’ve installed your image on the MicroSD card, it should have two partitions. The first partition, which is in FAT32, 
is the BOOT partition. The second partition, which is in ext4, is the one which has your Raspbian OS files. 
If you’re on a Linux machine, you should be able to see both partitions. If you’re on Windows or Mac, you might not be able to access 
the second ext4 partition. This is where your Linux VM/Live disk comes into play.

If you’re on a Windows machine, now’s the time to write your Linux image (Tahrpup) onto the 4GB USB Stick using unetbootin. 
Boot into your machine from the USB stick now, which will run a “live” version of Puppy Linux, which doesn’t write anything to your 
disks and merely runs on your RAM for as long as you want. If you have trouble booting into the USB stick, it might be because you 
have Secure Boot enabled. You need to go into your BIOS settings and disable Secure Boot and allow legacy booting. 
You’d have to Google for how to do it for your brand of PC Manufacturer.

If you’re on a Mac, you might have to Google how to create a bootable USB stick from an ISO and follow the appropriate steps, 
and then boot into the Linux installation.

Once you are on Linux, you should see your MicroSD card (Let’s say it’s device sdc). Mount partitions sdc1 and sdc2. 
Let’s say you’ve mounted them to /mnt/sdc1 and /mnt/sdc2. sdc1 should be the BOOT partition formatted as FAT32.
If you see a folder called etc in sdc1, it is NOT your BOOT partition. If you don’t, that’s your BOOT partition.  

## Step IV- 4. Enabling SSH on your Pi
There were various guides out there, and a lot of them focused on being able to access your machine with a keyboard and/or Ethernet. 
I didn’t have a keyboard, I didn’t want to use Ethernet, and I didn’t have SSH yet either. 
I wanted to connect to WiFi and then SSH into it, all without any extra wires.

SSH is disabled by default starting November. Enable it by creating an empty file called ssh in /mnt/sdc1/ folder of the BOOT disk.
(i.e. /mnt/sdc1/ssh). SSH should be enabled now.  

## Step V- 5. Modifying files to automatically connect to WiFi on boot
Once you’ve enabled SSH, the next thing to do is have your Raspberry Pi connect to the network so you can SSH into it. There are a couple of ways to connect to your WiFi if you have SSH/keyboard access to your Pi. However since we’re doing this without a keyboard or SSH, there’s only one way that I could get it to work. I’m assuming that you’ve followed all the steps I’ve detailed so far and haven’t modified any files apart from the ssh file above.

This post really helped me with this step, and I’ll detail out the necessary bits below so you can get going as well.

The dhcpcd service runs by default on Raspbian, and that’s what we’ll use to connect to WiFi. Things we need for this step are:

Your WiFi SSID and PSK (The WiFi network name and password you use to connect to it).
Your Gateway IP (Which is your Router’s IP).
We need to edit a couple of files - The /etc/wpa_supplicant/wpa_supplicant.conf file and the /etc/dhcpcd.conf file.

Open up the /etc/wpa_supplicant/wpa_supplicant.conf file first. Since this is on your mounted disk, it should actually be the /mnt/sdc2/etc/wpa_supplicant/wpa_supplicant.conf file. Don’t accidentally open up the file on your Linux instance and edit the wrong file. I’ve done that once.

This file should look like this:

ctrl_interface=DIR=/var/run/wpa_supplicant GROUP=netdev
update_config=1
Add the following lines below that:

network={
    ssid="SSID"
    psk="PASSWORD"
}
Replace SSID and PASSWORD with the ones for your network. This should work, but if it doesn’t, you might need to provide additional details in the network block. Google is your friend.

Next, open up the /etc/dhcpcd.conf file. Again, as this is a mounted disk, the file you want is actually /mnt/sdc2/etc/dhcpcd.conf. It should have a bunch of text in it already. Scroll all the way to the bottom and add the following:

interface eth0
static ip_address=10.1.10.100/24
static routers=10.1.10.1
static domain_name_servers=10.1.10.1

interface wlan0
static ip_address=10.1.10.101/24
static routers=10.1.10.1
static domain_name_servers=10.1.10.1 
Here, the static ip_address values are whatever you want your IP address for the Pi to be. The first 3 numbers should be the same as your Gateway IP, the last number can generally be any number greater than 1 (Because that’s your Router), and less than 256. 100 and 101 should be a safe bet.

The static routers and static domain_name_servers should be your Gateway IP. To find your Gateway IP, you can run either the ifconfig method in Linux/Mac, or the ipconfig method in Windows. This will give you your a bunch of details about the network adapters on your machine. On Linux, find your eth0 (Ethernet) or wlan0 (WiFi) adapter block, and on Windows find your Ethernet adapter or Wireless LAN adapter block. Your Router/Gateway’s IP would be something like Default Gateway:

IPConfig

Usually it’s a number that looks like 10.0.0.1, 10.1.10.1 or 192.168.1.1. It pretty much always ends with 1.

Once you’ve made those changes to your /etc/dhcpcd.conf, you should be good to go!

6. Firing it up!
Unmount your MicroSD card from your machine, plug it into your Raspberry Pi, plug in your power supply and play the waiting game.

After a minute or two, your Raspberry Pi should be booted and waiting for you to SSH into it. You can check if your Raspberry Pi is connected to your network by either using your Router’s Connected Devices page, or an app called Fing on your Android device. If you don’t have either, just pray it worked :)

Now connect via SSH to your Pi. Just type ssh pi@10.1.10.101 on a Linux/Mac console, or use Putty on Windows. Once you SSH into your Pi, use raspberry as your default password and you should be in!

Hope this helps someone out there!

