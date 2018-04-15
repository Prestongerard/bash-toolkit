#!/bin/sh
read -p "Where is it located locally?" LOCATION
read -p "What is the name of the repo?" NAME
cd $LOCATION
git init
git commit -m "first commit"
git remote add origin https://github.com/Prestongerard/$NAME.git
git push -u origin master

#First create a repo on github.com
#cd to directory or mkdir if there is none
#run script



