#!/bin/bash

read -p "What is the name of the site.com?" $site
sudo mkdir /var/www/html/$site/src/
cd /var/www/html/$site/src/
sudo chown -R www-data:www-data /var/www/html/$site/
cd /var/www/html/$site/src/
sudo wget http://wordpress.org/latest.tar.gz
cd /var/www/html/$site/src/
sudo -u www-data tar -xvf latest.tar.gz
sudo mv latest.tar.gz wordpress-`date "+%Y-%m-%d"`.tar.gz
sudo mkdir /var/www/html/$site/public_html/
sudo mv wordpress/* ../public_html/
sudo chown -R www-data:www-data /var/www/html/$site/public_html

#https://linode.com/docs/websites/cms/install-wordpress-on-ubuntu-16-04/#install-wordpress
#ubuntu 16.04




