# CUCM-LUA
SIP normalization scripts for CUCM

This is manual for using SIP normalization scripts on Cisco Call Manager.

This repository contains script for adding and passing private/unknown SIP headers from SIP trunk to end devices/other trunks. 

The script contains condition for adding SIP header. This condition depends on called number. SIP header is added even if we use transformation pattern afterward or even if the called number was hunt pilot.

HOW TO SETUP

1) Open 	Cisco Unified CM Administration and log in
2) Select from menu: Device -> Device settings -> SIP Normalization script
3) Select "Add new" button
4) Name your script
5) Paste content of add_header.lua in Content part
   ![image](https://github.com/vranosim/CUCM-LUA/assets/158761843/1640bac8-dc40-4795-94ed-741029ce208e)
6) Press "Save"
7) Open Device -> Trunk
8) Select trunk on which you want to add header to all incoming INVITEs
9) Scroll down to "Normalization Script" part
10) From drop menu select your script
11) Tick "Enable trace"
12) Save and restart device
13) Everything should be working 


Debugging process:

You can get the logs via RTMT utility.

First of all you have to enable logging of normalization scripts (step 11 in HOW TO SETUP).

The execution of each step is not automaticaly logged. So in order to get to know what is happening, we can add logs to script with function trace.format().
You can log your texts or variables. Texts must be in "", variables are without.
You also need to specify that you want to enable trace at the begining of script (trace.enable()).
