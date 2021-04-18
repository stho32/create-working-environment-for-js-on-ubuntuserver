#!/bin/bash

## Updating the server and installing xubuntu GUI
apt update
apt upgrade -y
export DEBIAN_FRONTEND=noninteractive
apt-get install xubuntu-core -y

## Installing VNC Server
apt-get install x2goserver x2goserver-xsession -y

curl -sL https://deb.nodesource.com/setup_14.x | sudo bash -
sudo apt-get install -y nodejs

## Dev Environment
snap install --classic code

## Setting up the new user and generating random password

clear
pass="$(head /dev/urandom | tr -dc A-Za-z0-9 | head -c16)"
echo "[INFO] Generating random password"
useradd developer -d /home/developer -m ;
echo -e "$pass\n$pass" | passwd developer
usermod --shell /bin/bash developer
echo "############################################"
echo "the account is setup"
echo "Your new Password for developer is : $pass"
echo "############################################"
usermod -aG sudo developer