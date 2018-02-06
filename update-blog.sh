#!/bin/bash
echo "Changing Directories"
cd /home/student/www/blog
echo "Pulling Deploy Branch"
git pull origin deploy
echo "Building Jekyll"
jekyll build

