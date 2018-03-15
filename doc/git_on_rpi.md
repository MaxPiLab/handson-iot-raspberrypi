# Git on Rsapberry Pi  

<p align="center"> 
<img src="https://user-images.githubusercontent.com/35935951/37481352-849bdb40-28a7-11e8-8d76-0940f342b5e5.png">
</p>  

## What is Git?

Git is a free and open source distruibuted version control system.  
Git is great for managing versions of a project, whether you’re alone working on this project or not.  
This tool can be used on a single computer without any problem. The problems come when you want to share your code, either publicly or between two or more of your computers. In this case, you need a place to send your modifications, so they can be retrieved on the other computers. For this you need a **Git** server.  

With Git you can do following things:  

**1.** you can modify your code  
**2.** you can send your changes to the server  
**3.** on another computer, you or anybody else downloads the changes from the server  
**4.** new changes are made from this other computer  
**5.** these changes are sent to the server so that others can download them, and so on.  
**6.** A Git server is basically a computer connected to the Internet on which we can store Git repositories. Any computer can be used   for that and, here, we’ll use a Raspberry Pi, as it has the advantage of being a very low cost option, while giving good performance.  

## Why create our own server?

There are various services around the Web that allow us to share Git repositories—like GitHub.  

The problem is that repositories on services like these are often public. Sometimes, we don’t want to share our code publicly, but 
rather to share it with just a few people .  

Some services like GitHub offer private repositories — so that you can choose who sees your code — though they’re not free. That’s why 
creating our own server can be a good idea.  

## What will we need?

* Raspberry Pi (RPi) 2 or 3 model.  
* A power source (via microUSB).  
* SD Card ( installed with Raspbian or any other operating system on which Raspberry Pi can work)  
* Internet souce to connect with Raspberry Pi (through Ethernet or directly via Wi-Fi).  
  
Check https://www.raspberrypi.org/documentation/remote-access/access-over-Internet/README.md for connecting RPi to internet.  

## How To Build a Git Server with a Raspberry Pi

### Installing Git

The first thing our server will need is Git, which you can install by executing the following command on the Raspberry Pi:  

`sudo apt-get install git`  

### First time git setup

Open git bash.  

The first thing you should do is to set your user name and e-mail address. This is important because every Git commit uses this information.  

```
git config --global user.name "John Doe"  
git config --global user.email johndoe@example.com  
```
If you ever need help while using Git, there are three ways to get the manual page (manpage) help for any of the Git commands:

```
git help (list all content)
git help <verb>  
git <verb> --help  
man git-<verb>  
```  
For example, you can get the manpage help for the config command by running  

`git help config`  

You can get a Git project using two main approaches. The first takes an existing project or directory and imports it into Git. The second clones an existing Git repository from another server.  

###  Initializing the repo on your computer  

On the computer you’ll use to work on your project, create a new folder (anywhere you want). In a terminal, go to this directory 
(with cd) and initialize the repo with the following command:  

`git init`  

This creates a new subdirectory named `.git` that contains all of your necessary repository files — a Git repository skeleton.  

Other way is cloning an existing repository.   

### Cloning a repository

If the repository exists on the server, but it needs to be added to another computer. This is when it’s time to clone the repository.  

Cloning a repo requires knowledge of where it lives — or, in other words, what its address is. As it’s your server, you should know it,
and it’s the same as the one we used above:

`git clone git@XXX.XXX.XXX.XXX:/home/git/Hello-World.git`  

By cloning a repository, a remote is automatically created, named origin.  

### Working with the repositories

In order for Git to start tracking any file, the file needs to be added to the staging area (wher you can edit your files).  

We can add a file to the staging area with:  

`git add filename`  

To check the status of the project in Git, use the command:  

`git status`  

To check the differences between the working directory and the staging area , use the command:  

`git diff filename`  

Now our repo is ready to use. Create new files, edit them, remove some others, as always. When you’re ready to create your first commit,
just do the usual:  

`git commit -m 'My first commit'`  

Here, the message inside single quotes ca be anything you want.  

After a few commits, you’ll want to send your changes to your server. To do that, use the following command, which should sound familiar
to you if you’ve already used something like GitHub:  

`git push origin master`  

In the above command, we send the master branch to the remote repository named origin (default).  

Now, someone else with access to the server — or you on another computer — can download your changes and make commits. To download the 
latest changes and get an updated working repository on your computer, type the following command:  

`git pull origin master` 

To learn more about Git. <a href="https://git-scm.com/book/en/v1/Getting-Started"> check here.</a>   


