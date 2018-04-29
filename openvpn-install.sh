#!/bin/sh
apt-get update && apt-get upgrade
adduser pambrosky
sudo passwd
adduser pambrosky sudo
cd /home/pambrosky
mkdir -p ~/.ssh && sudo chmod -R 700 ~/.ssh/
sudo apt-get install openvpn
sudo passwd openvpn
#Ubuntu/Debian
