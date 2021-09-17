#!/bin/bash


sudo apt update 
sudo apt upgrade -y

#enable external sdcard (exfat)
# ?sudo add-apt-repository universe
sudo apt install exfat-fuse exfat-utils

#set python3 as default
cd /usr/bin
sudo unlink python
sudo ln -s python3 python

#set utilities for jetson
cd ~
git clone https://github.com/jetsonhacks/jetsonUtilities
cd jetsonUtilities
python jetsonInfo.py

#Jetson stats (launch with jtop)
sudo apt install python-pip
sudo pip install jetson-stats
echo "Reboot to enable jetson-stats"

#Jetson thermal monitor 
#Usage: cd ~/jetson-thermal-monitor/ -> python jetson_temp_monitor.py
sudo apt install python3-pip libfreetype6-dev python3-numpy python3-matplotlib
git clone https://github.com/tsutof/jetson-thermal-monitor

#Setting for remote desktop environment
sudo apt install -y xrdp
echo lxsession > ~/.xsession
echo "Set IP address manually and after chaging the IP adress, you can connect this device from remote desktop."

echo "Setup vscode from here"
echo https://code.visualstudio.com/#alt-downloads

