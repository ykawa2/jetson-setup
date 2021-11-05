#!/bin/bash

read -p "Input user address:" ADDRESS
read -p "Input user name:" USER

echo ""
read -p "Press y to proceed (Address:${ADDRESS}  USER:${USER}):" RET

if [ $RET != "y" ]; then
exit0
fi

#Create SSH key (~/.ssh/id_ed25519 and .pub)
ssh-keygen -t ed25519 -C ${ADDRESS}

#launch ssh-agent
eval "$(ssh-agent -s)" 

#Edit ~/.ssh/config
echo "Host github.com" >> ~/.ssh/config
echo "  HostName github.com" >> ~/.ssh/config
echo "  IdentityFile ~/.ssh/id_ed25519" >> ~/.ssh/config
echo "  AddKeysToAgent yes" >> ~/.ssh/config
echo "  User git" >> ~/.ssh/config

#Register ssh key to ssh-agent
ssh-add -k ~/.ssh/id_ed25519

git config --global user.name ${USER}
git config --global user.email ${ADDRESS}

#Setup diff tool
sudo apt install meld
git config --global diff.tool meld
git config --global difftool.prompt false
git config --global merge.tool meld
git config --global mergetool.prompt false

#Show results and proceed to registration on github.
git config --global --list
cat ~/.ssh/id_ed25519.pub
echo ">>> Please regsiter new SSH key on account settings of github"
