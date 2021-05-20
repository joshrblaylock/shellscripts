#!/bin/bash
#This script backs up a directory of your choice

echo -e "What directory do you want to back up? --> \c"
read ANS

echo "Performing backup....."
sleep   3
FILE=`echo $ANS | sed s#/#-#g`
DATE=`date +%F`
tar -zcvf ~/backup-$FILE-$DATE.tar.gz $ANS

echo "Backup performed to ~/backup-$FILENAME-$DATE.tar.gz"






#if [ $# -ne 1 ]
#then
#	echo "Usage is $0 <directory to back up>"
#	exit 255
#fi

#echo "Performing backup....."
#sleep 3
#tar -zcvf ~/backupfile.tar.gz $1

#echo "Backup completed successfully to ~/backupfile.tar.gz"

