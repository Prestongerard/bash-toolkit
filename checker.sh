#!/bin/sh
read -p "Domain to check? :"  DOMAIN
echo
dig $DOMAIN ANY
echo
echo
echo ____________DOMAIN DATES______________
echo
whois $DOMAIN | grep 'Registry Expiry Date:'
whois $DOMAIN | grep 'Updated Date:'
echo
echo
echo ____________CURL______________________
echo
curl -IlL $DOMAIN
echo
echo
echo ____________NMAP______________________
echo
nmap -p 22,80,443 $DOMAIN
