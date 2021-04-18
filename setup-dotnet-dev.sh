#!/bin/bash

apt update
apt-get upgrade
export DEBIAN_FRONTEND=noninteractive
apt-get install xubuntu-core -y

apt-get install x2goserver x2goserver-xsession -y

snap install --classic code
snap install --classic dotnet-sdk
snap install rider --classic


# teamviewer
cd /tmp
wget https://download.teamviewer.com/download/linux/signature/TeamViewer2017.asc
apt-key add TeamViewer2017.asc
sh -c 'echo "deb http://linux.teamviewer.com/deb stable main" >> /etc/apt/sources.list.d/teamviewer.list'
apt update
#apt install teamviewer -y #has interactive question ... 
#firewall port for teamviewer
ufw allow 5938
# => does not work right now

# user login
useradd developer -d /home/developer -m ;
echo -e "RH02JGUGIgQbwQViMW\nRH02JGUGIgQbwQViMW" | passwd developer
usermod --shell /bin/bash developer
echo "the account is setup"
usermod -aG sudo developer

#echo 'export DOTNET_ROOT="/snap/dotnet-sdk/current"' >> "/home/developer/.bashrc"