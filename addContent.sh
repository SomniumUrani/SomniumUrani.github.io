#!/bin/bash

git add .

MSG="${1:-Content changed/added}"
git commit -m "$MSG"

echo ""
read -p "Wanna push? (y/n): " -n 1 -r
echo "" 

if [[ $REPLY =~ ^[Yy]$ ]]
then
    git push
else
    echo "Push cancelled"
fi
