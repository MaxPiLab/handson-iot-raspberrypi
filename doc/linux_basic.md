# Basic LINUX Commands

## FILESYSTEM  

**ls**  

Lists the content of the current directory (or one that is specified).  

   **ls -l**  

   Displays additional information (permissions, owner, group, size, date and timestamp of last edit) about each file and directory in a    list format.  

   **ls -a**  

   Displays hidden files.  

<pre>
<b>maxpi@ubantu:~/Desktop$ ls  
handson-iot-raspberrypi  
handson-voice-kit  
maxpi@ubantu:~/Desktop$ ls -l  
total 4  
drwxrwxrwx. maxpi maxpi 450 Feb 1 12:00 handson-iot-raspberrypi    
drwxrwxrwx. maxpi maxpi 200 Feb 16 16:10 handson-voice-kit     
maxpi@ubantu:~/Desktop$  
</b>
</pre>  

**cd**  

Changes the current directory to the one specified. Can use relative (i.e. cd directoryA) or absolute (i.e. cd /home/maxpi/directoryA) paths.  

   **cd..**  
   
   Used for going back to the previous directory.  

<pre>
<b>maxpi@ubantu:~/Desktop$ ls  
handson-voice-kit  handson-iot-raspberrypi  
maxpi@ubantu:~/Desktop$ cd handson-voice-kit  
maxpi@ubantu:~/Desktop/handson-voice-kit$ cd ..  
maxpi@ubantu:~/Desktop$  
</b></pre>

**pwd**  

Displays the name of the current working directory.  

<pre>
<b>maxpi@ubantu:~/Desktop$ pwd   
/home/maxpi/Desktop</b>
</pre>

**mkdir**  

Creates a new directory.  

**rmdir**  

Deletes the specified directory or folder, provided it is already empty.  

***NOTE**:But rmdir can only be used to delete an empty directory.*  

<pre>
<b>maxpi@ubantu:~/Desktop$ ls  
maxpi@ubantu:~/Desktop$ mkdir handson_rpi  
maxpi@ubantu:~/Desktop$ ls  
handson_rpi  
maxpi@ubantu:~/Desktop$ rmdir handson_rpi  
maxpi@ubantu:~/Desktop$ ls  
maxpi@ubantu:~/Desktop$
</b>
</pre>

**rm**  

To delete a directory containing files, use **rm**. Use the rm command to delete files and directories having files in it. But simply rm cannot delete a directory. Use **rm -r** to delete a directory. In this case, it deletes both the folder and the files in it.  

<pre>
<b>maxpi@ubantu:~/Desktop$ ls  
iot.py handson_rpi  
maxpi@ubantu:~/Desktop$ rm iot.py  
maxpi@ubantu:~/Desktop$ ls  
handson_rpi  
maxpi@ubantu:~/Desktop$ rm -r handson_rpi  
maxpi@ubantu:~/Desktop$ ls  
maxpi@ubantu:~/Desktop$
</b>
</pre>

**cp**  

Makes a copy of a file and places it at the specified location. This command can either take `FILE FILE` `(cp fileA fileB)`, `FILE DIR` `(cp fileA /directoryB/)` or `-r DIR DIR`. Syntax for cp command is **cp (source file) (target location)**.  

<pre>
<b>maxpi@ubantu:~/Desktop$ ls  
iot.py handson_rpi  
maxpi@ubantu:~/Desktop$ ls handson_rpi  
maxpi@ubantu:~/Desktop$ cp iot.py /home/maxpi/Desktop/handson_rpi  
maxpi@ubantu:~/Desktop$ ls /home/maxpi/Desktop/handson_rpi  
iot.py 
maxpi@ubantu:~/Desktop$  
</b>
</pre>

**mv**  

Moves a file and places it at the specified location (so where cp performs a **copy-paste**, mv performs a **cut-paste**).This command can either take `FILE FILE` `(mv fileA fileB)`, `FILE DIR` `(mv fileA /directoryB/)` or `DIR DIR` `(mv /directoryB /directoryC)` as arguments.This command is also useful as a method to rename files and directories after they've been created.   

<pre>
<b>maxpi@ubantu:~/Desktop$ ls   
iot.py handson_rpi    
maxpi@ubantu:~/Desktop$ mv iot.py iot_today.py   
maxpi@ubantu:~/Desktop$ ls   
iot_today.py handson_rpi  
maxpi@ubantu:~/Desktop$    
</b>
</pre>

**touch**  

The touch command is used to create a file. It can be anything, from an empty txt file to an empty zip file.  

<pre>
<b>maxpi@ubantu:~/Desktop$ ls    
maxpi@ubantu:~/Desktop$ touch rpi.txt   
maxpi@ubantu:~/Desktop$ ls     
roi.txt    
maxpi@ubantu:~/Desktop$    
</b>
</pre>

**cat**  

Lists the contents of file(s). Can be used to list the contents of multiple files, i.e. `cat *.txt` will list the contents of all .txt files in the current directory.  

**head**  

Displays the beginning of a file. Can be used with -n to specify the number of lines to show (by default 10), or with **-c** to specify the number of bytes.  

**tail**  

Displays the end of a file. The starting point in the file can be specified either through **-b** for 512 byte blocks,**-c** for bytes, or **-n** for number of lines.  

**chmod**  

The command name chmod stands for **change mode**, and it is used to define the way a file can be accessed. The chmod command can use symbols **u** (user that owns the file), **g** (the files group) , **o** (other users) and the permissions **r** (read),**w** (write) and **x** (execute). Using chmod `u+x <filename>` will add execute permission for the owner of the file.  

Syntax of chmod command is:` chmod options permissions file name`.  
If no options are specified, chmod modifies the permissions of the file specified by file name to the permissions specified by permissions.  

Permissions defines the permissions for the owner of the file (the **user**), members of the group who owns the file (the **group**), and anyone else (**others**).  
e.g, for the owner of a file named myfile, and you want to set its permissions so that:  
the user can read, write, ande xecute it;  
members of your group can read ande xecute it; and  
others may only read it.  

<pre>
<b>maxpi@ubantu:~/Desktop$ chmod u=rwx,g=rx,o=r myfile   
maxpi@ubantu:~/Desktop$    
</b>
</pre>

**chown**  

Changes the user and/or group that owns a file. It normally needs to be run as root using sudo (SuperUser Do) e.g. sudo chown pi:root *filename* will change the owner to pi and the group to root.  

**ssh**  

ssh denotes the secure shell. Connect to another computer using an encrypted network connection.<a href="https://www.raspberrypi.org/documentation/remote-access/ssh/">See more about SSH</a>.  

**scp**  

Copies a file from one computer to another using ssh. <a href="https://www.raspberrypi.org/documentation/remote-access/ssh/scp.md">See more about scp</a>.  

**sudo**  

Run a command as a superuser, or another user. Use sudo -s for a superuser shell.<a href="https://www.raspberrypi.org/documentation/linux/usage/root.md">See more about sudo</a>.    

**dd**  

Copies a file converting the file as specified. It is often used to copy an entire disk to a single file or back again 
eg. `dd if=/dev/sdd of=backup.img` will create a backup image from an SD card or USB disk drive at /dev/sdd.  

***NOTE**:Make sure to use the correct drive when copying an image to the SD card as it can overwrite the entire disk.*   

**df**  

Display the disk space available and used on the mounted filesystems. Use `df -h` to see the output in a human readable format using M for MBs rather than showing number of bytes.  

**unzip**  

Extracts the files from a compressed zip file.  

**tar**  

Store or extract files from a tape archive file. It can also reduce the space required by compressing the file similar to a zip file.
To create a compressed file use `tar -cvzf *filename.tar.gz* *directory/*`.To extract the contents of a file use `tar -xvzf *filename.tar.gz* `.   

**pipes**  

A pipe allows the output from one command to be used as the input for another command. The pipe symbol is a vertical line `|`. For example to only show the first 10 entries of the `ls` command it can be piped through the head command `ls | head`.  

**tree**  

Show a directory and all subdirectories and files indented as a tree structure.  

**&**  

Run a command in the background freeing up the shell for future commands.  

**wget**  

Download a file from the web directly to the computer e.g. `wget http://www.raspberrypi.org/documentation/linux/usage/commands.md `
will download this file to your computer as `commands.md`.   

**curl**  

Download or upload a file to/from a server. By default it will output the file contents of the file to the screen.  

**man**  

Show the manual page for a file. To find out more run `man man` to view the manual page of the man command.  

**searchgrep**  

Search inside files for certain search patterns e.g. `grep search *.txt` will look in all the files in the current directory ending with .txt for the string search. Supports regular expressions which allows special letter combinations to be included in the search.  

**awk**  

Programming language useful for searching and manipulating text files.  

**find**

Searches a directory and subdirectories for files matching certain patterns.  

**whereis**  

Finds the location or a command. Looks through standard program locations until it finds the requested command.  

## NETWORKING 

**ping**

Use ping to check if communication can be made with another host. Wikipedia says, **Ping is a computer network administration software utility used to test the reachability of a host on an Internet Protocol (IP) network**. Simply, when you type in, for example, **ping raspberrypi.org**, it checks if it can connect to the server and come back. It measures this round-trip time and gives you the details about it.   

<p align="center"> 
<img src="https://user-images.githubusercontent.com/35935951/37063312-03eca0c2-21bf-11e8-95dd-790593b869a1.png">
</p>

**nmap**  

Network exploration and scanning tool. Can return port and OS information about a host or a range of hosts. Running just nmap will display the options available as well as example usage.  

**hostname**  

Displays the current hostname of the system. A privileged (super) user can set the hostname to a new one by supplying it as an 
argument `hostname new-host`.  

**ifconfig**  

Displays the network configuration details for the interfaces on the current system when run without any arguments 
(i.e. ifconfig).  

<p align="center"> 
<img src="https://user-images.githubusercontent.com/35935951/37063303-fd900b60-21be-11e8-8d62-ca42b439de9b.png">
</p>

