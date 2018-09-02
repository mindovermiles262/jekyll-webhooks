#!/bin/bash

echo "Changing Directories"
cd /home/student/
echo "Pulling bash_profile"
/home/student/www/file_server
curl -o /home/student/www/file_server/bash.txt \
  https://raw.githubusercontent.com/mindovermiles262/dots/master/bash/bash_profile
echo "END"
