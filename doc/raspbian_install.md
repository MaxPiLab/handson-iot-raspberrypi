# How to Install RASPBIAN for your Raspberry Pi

Raspbian is the Foundation’s official supported operating system for all models of the Raspberry Pi. It's called Raspbian because it's a portmanteau of Raspberry and **Debian** (a Linux distribution). It's the best choice for general use.  

Raspbian comes pre-installed with plenty of software for education, programming and general use. It has **Python, Scratch, Sonic Pi, Java, Mathematica** and more.  

You can install it with <a href="https://www.raspberrypi.org/downloads/noobs/"> NOOBS </a> (just installer for Raspbian), or you can write a Raspbian image directly.  

Here, are the steps to install Raspbian directly

### Download the image

Download <a href="https://www.raspberrypi.org/downloads/raspbian/">Raspbian image</a> directly.  

<p align="center"> 
<img src="https://user-images.githubusercontent.com/35935951/36966202-03e62d02-2082-11e8-958e-f02d2826e1fe.png">
</p>

The Raspbian with PIXEL image contained in the ZIP archive is over 4GB in size and uses the ZIP64 format.  

To uncompress the archive, a unzip tool that supports ZIP64 is required. The following zip tools support ZIP64:  

* <a href="www.7-zip.org/download.html">7-Zip (Windows)</a>  
* <a href="https://the-unarchiver.en.softonic.com/mac">The Unarchiver (Mac)</a>  
* <a href="https://oss.oracle.com/el4/unzip/unzip.html">Unzip (Linux)</a>

### Write image to SD Card  

You will need to use an image writing tool to install the image you have downloaded on your SD card. There are many such tools available to do so. You can either use **Etcher or Win32DiskImager** and many more.  

Here, we are using Etcher for writing the image to SD Card.  

**Etcher** is a graphical SD card writing tool that works on Mac OS, Linux and Windows, and is the easiest option for most users.  
Etcher also supports writing images directly from the zip file, without any unzipping required.  

<p align="center"> 
<img src="https://user-images.githubusercontent.com/35935951/36966195-fde2d950-2081-11e8-965c-c7dfdbc42139.png">
</p>

To write your image with Etcher:  

1.) Download <a href="https://etcher.io/">Etcher<a/> and install it.  
  
2.) Connect an SD card reader with the SD card inside.  

3.) Open Etcher and select from your hard drive the Raspberry Pi .img or  .zip file you wish to write to the SD card.  

4.) Select the SD card you wish to write your image to.  

5.) Review your selections and click 'Flash!' to begin writing data to the SD card.  

  
  
  



