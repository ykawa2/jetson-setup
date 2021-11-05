#!/bin/bash

#update-------------------------------------------------------------
sudo apt update 
sudo apt upgrade -y

#SDcard settings----------------------------------------------------
echo ">>> Installing utils for external sdcard (format: exfat)"
sudo apt install -y exfat-fuse exfat-utils

#python settings----------------------------------------------------
echo ">>> Setting python3 as default"
cd /usr/bin
sudo unlink python
sudo ln -s python3 python

#UnixBench----------------------------------------------------------
echo ">>> Downloading UnixBench"
cd ~
git clone https://github.com/kdlucas/byte-unixbench

#jetsonUtilities----------------------------------------------------
echo ">>> Installing jetsonUtilities"
cd ~
git clone https://github.com/jetsonhacks/jetsonUtilities
cd jetsonUtilities
python jetsonInfo.py

#Jetson stats-------------------------------------------------------
echo ">>> Installing Jetson stats (launch with jtop)"
sudo apt install python-pip
sudo pip install jetson-stats
echo ">>> Reboot to enable jetson-stats"

#jetson thermal monitor---------------------------------------------
echo ">>> Installing jetson thermal monitor "
#Usage: cd ~/jetson-thermal-monitor/ -> python jetson_temp_monitor.py
sudo apt install -y python3-pip libfreetype6-dev python3-numpy python3-matplotlib
git clone https://github.com/tsutof/jetson-thermal-monitor

#Desktop env--------------------------------------------------------
echo ">>> Setting for remote desktop environment"
sudo apt install -y xrdp
echo lxsession > ~/.xsession
echo ">>> Set IP address manually and after chaging the IP adress, you can connect this device from remote desktop."

#Docker-Compose settings--------------------------------------------
echo ">>> Setup pip and docker compose"
sudo apt install curl python3-testresources
curl -kL https://bootstrap.pypa.io/get-pip.py | python3
python3 -m pip install --user docker-compose

echo '' >> ~/.bashrc
echo '#added for docker compose' >> ~/.bashrc
echo 'PATH=$PATH:$HOME/.local/bin' >> ~/.bashrc
source ~/.bashrc
sudo gpasswd -a $USER docker
echo ">>> Please re-login to enable group settings"

#setting sudoers for app--------------------------------------------
echo "**************************************************************"
echo ">>> Edit sudoers for easy access to jetson_clocks and npvmodel for application"
echo "#Easy access to jetson_clocks and npvmodel for application"
echo "%sudo   ALL=NOPASSWD: /usr/bin/jetson_clocks"
echo "%sudo   ALL=NOPASSWD: /usr/sbin/nvpmodel"
echo "%sudo   ALL=NOPASSWD: /sbin/ifconfig"
echo "**************************************************************"

#VS Code------------------------------------------------------------
echo "**************************************************************"
echo ">>> Setup vscode from here"
echo ">>> https://code.visualstudio.com/#alt-downloads"
echo "**************************************************************"

