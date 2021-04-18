#!/bin/bash

apt update
export DEBIAN_FRONTEND=noninteractive
apt-get install xubuntu-core -y

apt-get install x2goserver x2goserver-xsession -y

apt install nodejs npm -y
snap install --classic code

useradd developer -d /home/developer -m ;
echo -e "RH02JGUGIgQbwQViMW\nRH02JGUGIgQbwQViMW" | passwd developer
usermod --shell /bin/bash developer
echo "the account is setup"
usermod -aG sudo developer
