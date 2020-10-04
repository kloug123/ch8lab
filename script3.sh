#!/bin/bash
#this is script backs up a directory that is specifed as an argument on the command line
#this prints an error to the screen and exits the shell script if the user does not supply oe argument
if [ $# -ne 1 ]
then
echo "usage is $0 <directory to back up>"
exit 255
fi
#this back up $1 (the first argument) to backup.tar.gz
echo "performing backup...."
sleep 3
tar -zcvf ~/back.tar.gz $1

echo "backup $1 completed sucessfully at `date`"
