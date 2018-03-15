# Git on Rsapberry Pi

Git is a free and open source distruibuted version control system.
To install Git on to your to Raspberry Pi run the following command
Sudo apt-get install git-core
This will install the core git files on to your raspberry pi
To download Git files you can use the following command
“git clone git://website/stuff/program.git”

if you want to share your code between several computers, you’ll need a Git server.



One of these tools is Git. Git is great for managing versions of a project, whether you’re alone working on this project or not. 
This tool can be used on a single computer without any problem. However, if you want to share your code between several computers,
you’ll need a Git server. That’s what we’ll build in this tutorial.

## A Git server?

The problems come when you want to share your code, either publicly or between two or more of your computers.  

In this case, you need a place to send your modifications, so they can be retrieved on the other computers. With Git you can do following 
things:  

1. you can modify your code
2. you can send your changes to the server
3. on another computer, you or anybody else downloads the changes from the server
4. new changes are made from this other computer
5. these changes are sent to the server so that others can download them, and so on.
6. A Git server is basically a computer connected to the Internet on which we can store Git repositories. Any computer can be used for   
that and, here, we’ll use a Raspberry Pi, as it has the advantage of being a very low cost option, while giving good performance.

## Why create our own server?

There are various services around the Web that allow us to share Git repositories—like GitHub.  

The problem is that repositories on services like these are often public. Sometimes, we don’t want to share our code publicly, but 
rather to share it with just a few people (or even just another computer we own).  

Some services like GitHub offer private repositories — so that you can choose who sees your code — though they’re not free. That’s why 
creating our own server can be a good idea.  

We’re not recreating GitHub here
Just to be clear, though: there won’t be the facility for things like pull requests, or even a graphical interface.  

## What will we need?

However, the very first version of the Raspberry Pi is largely enough and, as the Pi 2 and 3 are available, maybe you can find the first
Raspberry Pi for a small price, so it’s a good option to think about.

Anyway, the Raspberry Pi is just a motherboard. Whatever version you choose, you will need at least a case to protect it, a power source
(via microUSB, like a smartphone), an SD card to store the OS (a classical SD card or a microSD following the version of the Pi you 
chose) and a way to connect the Pi to the Internet. Depending on the Pi you have, you can connect it through Ethernet, directly via 
Wi-Fi (for the Pi 3) or with a Wi-Fi key.

Now that you have everything you need for this project, let’s see how to get a Git server from this small computer!

How To Build a Git Server with a Raspberry Pi
Installing Git
The first thing our server will need is Git. You can find it in the git package, which you can install by executing the following 
command on the Raspberry Pi:

sudo apt-get install git
From a very basic view, that’s all we need to get a Git server. However, there are some details we can add to get a proper and more 
secure server.

Creating a dedicated user
It’s a good practice to create a new user for each use you make of the Raspberry Pi. This user is the official manager of its 
corresponding use.

Some programs will automatically adds their own users. For instance, Kodi, the media center, creates the user kodi. In the same vein,
installing a LAMP solution (for getting a web server) will create the user www-data. Here we’ll create the user git. To do that, type
the following command on the Raspberry Pi:

sudo adduser git
If you want to, you can change the name of the dedicated user to another one, by changing git in the above command.

You’ll be asked to enter a password for this user. Then, you’ll be able to enter some other information like the real name of the user 
or their phone number. As git is not a real person, you can skip all these questions without any problem.

Using SSH to access the server
Having a dedicated screen for a server is pretty much useless. Most of the time, we just want to exchange data with it. To do that we 
can use SSH, a secure way to communicate between two computers.

Explaining how SSH works is not the aim of this article, so I won’t describe how to use it. However, you can find excellent documentation
on Raspberry Pi’s official website.

How To Use Our Server
Raspberry Pi logo

Our server is now ready to use. So it’s time to see how to use it. We’ll see here how to create a new repository, and how to update it.


Let’s show our great powers of imagination to the world by creating a test repository named Hello-World.

Creating a new repo on the Raspberry Pi
The first thing to do is initialize our new repository on the Raspberry Pi. On the server side, a repository is basically the same 
thing you find on your computer: a folder with a .git subfolder. So the first thing to do is to create this folder.

On the Raspberry Pi, use the git user to create it (through SSH or not, but you should always use this user to create new repositories).
You can create this folder anywhere you want: on the Raspberry Pi’s SD card, for instance, or on an external HDD. In the following 
command, we create the folder in the home folder of git:

mkdir /home/git/Hello-World.git
Notice the .git suffix in the folder’s name. This suffix is not mandatory, and is just a convention: on the server side, repositories 
have this suffix. It’s a convention you can find on GitHub, for instance.

Now change your current directory to this new one:

cd /home/git/Hello-World.git
Finally, we initialize the repository:

git init --bare
The --bare option is here to indicate that we want to create a bare repository on the Raspberry Pi. Once again, it’s a convention: 
a bare repo doesn’t store the data the same way they are stored on a working repo. Bare repositories are not adapted to be working 
repositories, but they are perfect for a server. More information about bare repositories can be found in Git’s documentation.

Initializing the repo on your computer
On the computer you’ll use to work on your project, create a new folder (anywhere you want). In a terminal, go to this directory 
(with cd) and initialize the repo with the following command:

git init
Here we create a normal repository and not a bare one. That way, we’ll see files the way we expect to on our computer.

Creating the link
Our two empty repos need to communicate. To enable this communication, we’ll create a remote on the working repository. Still in the 
working repository’s folder on your computer (where you launched git init), type the following command:

git remote add pi git@XXX.XXX.XXX.XXX:/home/git/Hello-World.git
This command creates a new remote named pi (you can choose whatever name you want). The XXX.XXX.XXX.XXX must be replaced by the IP 
address of the Raspberry Pi (local or not). Finally, the /home/git/Hello-World.git part refers to the absolute path to the repository on
the server, so think about adapting it!

Working with the repositories
Now our repo is ready to use. Create new files, edit them, remove some others, as always. When you’re ready to create your first commit,
just do the usual:

git commit -m 'My first commit'
After a few commits, you’ll want to send your changes to your server. To do that, use the following command, which should sound familiar
to you if you’ve already used something like GitHub:

git push pi master
In the above command, we send the master branch to the remote repository named pi. It’s the remote we created in the previous part, 
so think about changing its name if you chose another one!

Now, someone else with access to the server — or you on another computer — can download your changes and make commits. To download the 
latest changes and get an updated working repository on your computer, type the following command:

git pull pi master
Cloning a repository
Bringing in a new user? Or adding yourself on another computer? The repository exists on the server, but it needs to be added to another 
computer. This is when it’s time to clone the repository.

Cloning a repo requires knowledge of where it lives — or, in other words, what its address is. As it’s your server, you should know it,
and it’s the same as the one we used above:

git clone git@XXX.XXX.XXX.XXX:/home/git/Hello-World.git
By cloning a repository, a remote is automatically created, named origin, so you don’t have to create yours as we did above.

Closing Words
As said above, the server we just built is very simple, but it may well be enough for small or private projects. If you need more 
features, you should consider another tool, or something like a private GitHub repository.

