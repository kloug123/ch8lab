#!/bin/bash
#this is script backs up a directory of your choice
#prompt the user for what directory to back up and put in $ANS
echo -e "what directory do you want to back up? -->\c"
read ANS
#use tar to back up
echo "performing backup...."
sleep 3
tar -zcvf ~/back.tar.gz $ANS

echo "backup $ANS completed sucessfully at `date`"
