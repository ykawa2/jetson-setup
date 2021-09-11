

#Create SSH key (~/.ssh/id_ed25519 and .pub)
ssh-keygen -t ed25519 –C "<email>"

#launch ssh-agent
eval "$(ssh-agent -s)" 

#Edit ~/.ssh/config
Echo "Host github.com" >> ~/.ssh/config
Echo "  HostName github.com" >> ~/.ssh/config
Echo "  IdentityFile ~/.ssh/id_ed25519" >> ~/.ssh/config
Echo "  AddKeysToAgent yes" >> ~/.ssh/config
Echo "  User git" >> ~/.ssh/config

#Register ssh key to ssh-agent
ssh-add -k ~/.ssh/id_ed25519

git config --global user.name "<username>"
git config --global user.email "<email>"

#Setup diff tool
sudo apt install meld
git config --global diff.tool meld
git config --global difftool.prompt false
git config --global merge.tool meld
git config --global mergetool.prompt false

#Show results and proceed to registration on github.
git config --global --list
cat ~/.ssh/id_ed25519.pub
echo "Please regsiter new SSH key on account settings of github"
