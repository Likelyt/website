#!/bin/bash

echo -e "\033[0;32mDeploying updates to GitHub of www.liyuantong93.com...\033[0m"

git remote add origin git@github.com:Likelyt/website

# Build the project. just in the website [dir]
hugo

# Go To Public folder
rm -r public

# Add changes to git.
git add .

# Commit changes.
msg="rebuilding site `date`"
if [ $# -eq 1 ]
  then msg="$1"
fi
git commit -m "$msg"

# Push source and build repos.
git push origin master

cd ..
