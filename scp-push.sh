#!/bin/sh
read -p "Username?" USER
read -p "What is the ip?" IP
read -p "Where is the local file?" LOCATION
read -p "Where would you the file to go?" DESTINATION
scp $FILE $USER@$IP:$DESTINATION
