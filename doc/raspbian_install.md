# How to Install RASPBIAN for your Raspberry Pi

Raspbian is the Foundation’s official supported operating system for all models of the Raspberry Pi.It's called Raspbian because it's a portmanteau of Raspberry and **Debian**(a Linux distribution).It's the best choice for general use.  

Raspbian comes pre-installed with plenty of software for education, programming and general use. It has **Python, Scratch, Sonic Pi, Java, Mathematica** and more.  

You can install it with **NOOBS**(just installer for Raspbian), or you can write a Raspbian image directly.  

## 1.) Installing from NOOBS

## 2.) Installing Raspbian directly

### Download the image

The Raspbian with PIXEL image contained in the ZIP archive is over 4GB in size and uses the ZIP64 format.  

To uncompress the archive, a unzip tool that supports ZIP64 is required. The following zip tools support ZIP64:  

* 7-Zip (Windows)  
* The Unarchiver (Mac)  
* Unzip (Linux)

### Write image to SD Card  

You will need to use an image writing tool to install the image you have downloaded on your SD card.  

Etcher is a graphical SD card writing tool that works on Mac OS, Linux and Windows, and is the easiest option for most users.  
Etcher also supports writing images directly from the zip file, without any unzipping required.  

To write your image with Etcher:  

1.) Download Etcher and install it.  
2.) Connect an SD card reader with the SD card inside.  
3.) Open Etcher and select from your hard drive the Raspberry Pi .img or  .zip file you wish to write to the SD card.  
4.) Select the SD card you wish to write your image to.  
5.) Review your selections and click 'Flash!' to begin writing data to the SD card.  

