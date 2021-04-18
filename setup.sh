#!/bin/bash

apt update
apt upgrade -y
export DEBIAN_FRONTEND=noninteractive
apt-get install xubuntu-core -y

apt-get install x2goserver x2goserver-xsession -y

# install nvm
#curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.34.0/install.sh | bash
#nvm install 14.15.3

#curl -sL https://deb.nodesource.com/setup_15.x | sudo bash -
# sudo apt-get install -y nodejs
# node -v

apt install nodejs npm -y
# dependency for nexe...
#apt-get install python2 -y

# dev environment
snap install --classic code



useradd developer -d /home/developer -m ;
echo -e "RH02JGUGIgQbwQViMW\nRH02JGUGIgQbwQViMW" | passwd developer
usermod --shell /bin/bash developer
echo "the account is setup"
usermod -aG sudo developer
