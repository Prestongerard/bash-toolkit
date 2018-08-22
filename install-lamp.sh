#!/bin/sh
read -p "What is the name of the site?" $URL
sudo apt update && sudo apt upgrade
sudo apt install tasksel
sudo tasksel install lamp-server
sudo apt install apache2
sudo systemctl restart apache2
sudo mkdir /var/log/php
sudo chown www-data /var/log/php
sudo apt install php-curl php-gd php-mbstring php-mcrypt php-xml php-xmlrpc
sudo apt install libapache2-mod-php7.0 php7.0-mysql
sudo ufw allow in "Apache Full"
sudo systemctl restart apache2

php -v
mysql -v
echo "Now create the vhost -  https://linode.com/docs/web-servers/lamp/install-lamp-stack-on-ubuntu-16-04/#configure-virtual-hosts"
