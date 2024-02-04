# CUCM-LUA
SIP normalization scripts for CUCM

This is manual for using SIP normalization scripts.

This repository contains script for adding and passing private/unknown SIP headers from SIP trunk. 

The script contains condition for adding SIP header. This condition depends on called number. SIP header is added even if we use transformation pattern afterward or even if the called number was hunt pilot.

Debugging process:

You can get the logs via RTMT utility.

First of all you have to enable logging of normalization scripts.
