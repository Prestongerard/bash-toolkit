#!/bin/sh
read -p "Copy and Paste full path to the file." PATH
read -p "Written Description:" DESCR
cd ~/$PATH
git remote -v
git status
git add $PATH
git commit -m "$DESCR"
git push
