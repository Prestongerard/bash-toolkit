#!/bin/sh
read -p "Copy and Paste full path to the directory." PATH
read -p "Written Description:" DESCR
cd ~/$PATH/
git remote -v
git status
git add .
git commit -m "$DESCR"
git push
