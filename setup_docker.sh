#!/bin/bash

#Add
sudo apt update -y
sudo apt upgrade

#Setup pip and docker compose
sudo apt install curl python3-testresources
curl -kL https://bootstrap.pypa.io/get-pip.py | python3
python3 -m pip install --user docker-compose

echo '' >> ~/.bashrc
echo '#added for docker compose' >> ~/.bashrc
echo 'PATH=$PATH:$HOME/.local/bin' >> ~/.bashrc
source ~/.bashrc

sudo gpasswd -a $USER docker

echo "Please re-login to enable group settings"


