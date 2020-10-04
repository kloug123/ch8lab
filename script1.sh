#!/bin/bash
#this is creat storage doucentation
#this grebs the hostname .puts it into the filename variable .and echos the result
FILENAME=`hostname`
echo "stroage report is saved to $FILENAME.storagereport"
#this is saves lvm configuration info to hostname,storagereport in your current directory
echo -e "\n LVM configuration:\n\n" >$FILENAME.storagereport
lvscan >>$FILENAME.storagereport
vgscan >>$FILENAME.storagereport
pvscan >>$FILENAME.storagereport
#this saves partition configuration info hostname in your current directory
echo -e "\n\n partition configuration: \n\n" >>$FILENAME.storagereport
lsblk >>$FILENAME.storagereport
#this save disk usage for every mounted filesystem to hostname.storage in your directory
echo -e "\n\n mounted filesystem usage:\n\n" >>$FILENAME.storagereport
df -hT | grep -v tmp >>$FILENAME.storagereport
