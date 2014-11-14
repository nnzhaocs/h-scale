
This guide shows you how to set up H-Scale atop an linux system. The setup consists of three parts: (i) Compiling new RAID module (ii) Configuring standard RAID and (iii) Run H-Scaling to scale RAID space.
 

Compiling new RAID module
This guide only shows the setup of our modification MD.
 
cd root directory, and run the following commands in the terminal to compile and install RAID module.
**************************
make

insraidmod
**************************

Configuring standard RAID
The script "createraid" is the configuration file of RAID. Of course, you can use MD command in the terminal to complete this process. The file contains the RAID settings and using RAID5 as default.
Run the following command to create a standard RAID5.
**************************
./createraid
**************************

Running scripts "stopraid" and "startraid" will stop or start a RAID.

H-Scaling operation


After configuring RAID, you can scale RAID space by running the following scripts.
**************************
./hscale21.sh			//Adding one disk to the RAID space
./hscale22.sh			//Adding two disks to the RAID space
./hscale21.sh ./hscale211.sh	//Multiple RAID scaling adding disk one by one
**************************

And after scaling, the operations to the new RAID is the same as MD. To see the detailed information of how to administer MD, please visit website http://code.google.com/p/h-scale to get URL link. 

This H-Scale version is a simple daft version, therefore, more optimization should be done, welcome to give us more advice.

