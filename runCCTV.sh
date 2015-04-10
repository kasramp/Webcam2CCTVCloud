#!/bin/bash
DELAY="-s"
LOCATION="-p"
SECOND=10
FOLDER_PATH=`pwd`;
if [ 0 -eq $# ]
then
	echo -e "No argument entered!"
	echo -e "Please use -s [second], -p [pics path]"
	echo -e "Default values : -s = 10, -p = pwd"
else
	for (( i=1; i<=$#; i++ )) 
	do
		if [ "${!i}" == $DELAY ]
		then
			echo "${!i}"
			i=$((i+1))
			SECOND="${!i}"
		elif [ "${!i}" == $LOCATION ]
		then
			i=$((i+1))
			FOLDER_PATH="${!i}"
		fi
	done
fi
while [ true ]
do
	nohup sh capture.sh $FOLDER_PATH
	sleep $SECOND
done
