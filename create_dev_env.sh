#!/bin/bash

#enable external sdcard (exfat)
# ?sudo add-apt-repository universe
sudo apt install exfat-fuse exfat-utils

#set python3 as default
cd /usr/bin
sudo unlink python
sudo ln -s python3 python

#set utilities for jetson
git clone https://github.com/jetsonhacks/jetsonUtilities
cd jetsonUtilities
python jetsonInfo.py
