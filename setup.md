# Machine setup

In order to run the notebooks you have three options:

  1. Work from a workstation in Cooper lab, connecting to a remote installation on csil (recommended)
  2. Work on your local Unix-like enviroment, connecting to a remote installation on csil (somewhat expert)
  3. Work on your local installation (expert only)
  
## Work from a workstation in Cooper lab, connecting to a remote installation on csil (recommended)

This is the simplest setup, and should work out of the box. The workstations in Cooper lab have an outdate operating system, 
so we'll run the python notebook kernel on a remote machine (on csil) and connect to it locally (from Cooper) via a ssh tunnel. 

If everything goes smoothly, you won't have to set up any of that manually, the script `restart_notebook.sh` will do that for you.
Since your home directory is mounted in NFS in both Cooper and csil, the files read/written by the remote notebook will appear 
on your local filesystem "magically".

*TL;DR:* you work on a workstation in Cooper lab; notebooks run remotely but look like they're running locally to you.

Here are the steps:

Disable ssl verification within git (Workstations in Cooper lab have SSL certificates not set up correctly):

```
git config --global http.sslVerify false
```

Make sure you are in your home directory:

```
cd
````

Clone this git repository:

```
git clone git://github.com/LucaFoschini/UCSBDataScienceBootcamp2015.git
````

Run a script to start the notebooks remotely:

```
cd UCSBDataScienceBootcamp2015/scripts
source restart_notebook.sh
```

At that point, a browser window (Google Chrome) should pop up pointing to an URL like:

```
http://localhost:1234
```

The specific URL will be printed out by the `restart_notebook.sh` command

## Work on your local Unix-like enviroment, connecting to a remote installation on csil (somewhat expert)

This specific setup still allows you to use the notebook installation on csil, but you can access the notebook from your 
local machine (e.g., your laptop).
However, unlike the previous setup, your local machine doesn't have the home directory shared with the remote machine
running the notebooks, so you'll have to login to the remote machine on csil explicitly to access the files read/written 
by the notebooks.

*TL;DR:* you work your laptop; notebooks run remotely but you access them through your local machine. The files read/written by notebooks live on a remote machine you have to log in to.

To do this:

Clone this git repository to your LOCAL machine:

```
git clone git://github.com/LucaFoschini/UCSBDataScienceBootcamp2015.git
````

Find the coordinates of the remote machine where the notebooks will run:

```
cd UCSBDataScienceBootcamp2015/scripts
source print_remote.sh
```
The output of the script should read something like: 

```
connect with:
ssh YOURUSERNAME@YYYY.cs.ucsb.edu
```

where YYYY is the name of the remote machine to log in to. 
At that point, from your *local* machine ssh into the remote machine by

```
ssh YOURUSERNAME@YYYY.cs.ucsb.edu
```
on the *remote* machine, make sure you are in your home directory:

```
cd
````

Clone this git repository (you're cloning again, in the remote machine this time):

```
git clone git://github.com/LucaFoschini/UCSBDataScienceBootcamp2015.git
````

Finally, from your *local* machine, run a script to start the notebooks remotely:

```
cd UCSBDataScienceBootcamp2015/scripts
source restart_notebook.sh
```

At that point, a browser window (Google Chrome) should pop up pointing to an URL like:

```
http://localhost:1234
```

The specific URL will be printed out by the `restart_notebook.sh` command

## Work on your local installation (Expert only)

This mode will allow to work on a local installation on your machine (laptop). However, the installation might not have
all the necessary libraries installed and additional installations may be challenging. 

From a terminal window, clone this git repository (requires git installed):

```
git clone git://github.com/LucaFoschini/UCSBDataScienceBootcamp2015.git
cd UCSBDataScienceBootcamp2015/
```

Then, install the python anaconda distribution from [here](http://continuum.io/downloads). 
Choose the graphical installer. Once the installation is completed, you'll have a "Launcher" icon on your desktop.
The Launcher will give a few options, including the "python-notebook" and "spyder-app". Use "python-notebook"

A browser should pop up with URL set to ```localhost:8888```. From there you can access and modify the notebooks on the bootcamp repository
