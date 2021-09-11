#!/bin/bash

#enable external sdcard (exfat)
# ?sudo add-apt-repository universe
sudo apt install exfat-fuse exfat-utils

#set python3 as default
sudo unlink python
sudo ln -s python3 python

