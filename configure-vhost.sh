#!/bin/sh
read -p "what is the site.com?" $site
#edit vhost file ; see instructions below 
sudo mkdir -p /var/www/html/$site
sudo mkdir -p /var/www/html/$site/public_html
sudo a2ensite $site.conf
sudo a2dissite 000-default.conf
sudo systemctl reload apache2
:' example vhost file
/etc/apache2/sites-available/example.com.conf 
<Directory /var/www/html/example.com/public_html>
        Require all granted
</Directory>
<VirtualHost *:80>
        ServerName example.com
        ServerAlias www.example.com
        ServerAdmin webmaster@localhost
        DocumentRoot /var/www/html/example.com/public_html

        ErrorLog /var/www/html/example.com/logs/error.log
        CustomLog /var/www/html/example.com/logs/access.log combined

</VirtualHost>
'
#https://linode.com/docs/web-servers/lamp/install-lamp-stack-on-ubuntu-16-04/#configure-virtual-hosts
