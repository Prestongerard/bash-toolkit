#!/bin/sh
sed -i 's/PermitRootLogin yes/PermitRootLogin no/' /etc/ssh/sshd_config
apt-get update && apt-get upgrade -y
read -p "Username?" $USER
adduser $USER
passwd $USER
adduser $USER sudo
cd /home/$USER
mkdir -p ~/home/$USER/.ssh && sudo chmod -R 700 ~/home/$USER/.ssh/
sudo apt-get install fail2ban
sudo ufw allow ssh
sudo ufw enable
sudo ufw status
cat /etc/ssh/sshd_config | grep ^PermitRootLogin

#Ubuntu/Debian
