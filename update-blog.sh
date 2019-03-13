#!/bin/bash
echo "Changing Directories"
cd /home/student/www/blog
echo "Pulling Master Branch"
git pull origin master
echo "Building Jekyll"
bundle install
bundle exec jekyll build

