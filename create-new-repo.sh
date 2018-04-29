#!/bin/sh
read -p "What is the name of the repo?" NAME
mkdir $NAME
cd $NAME
git init
git add .
git commit -m "first commit"
git remote add origin https://github.com/Prestongerard/$NAME.git
git push -u origin master

#First create a repo on github.com
#cd to the directory you would like the repo in. 
#run script



