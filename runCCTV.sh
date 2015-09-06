#!/bin/bash

# This file is part of Webcam2CCTVCloud.
# Webcam2CCTVCloud is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License version 3
# as published by the Free Software Foundation.
#
# Webcam2CCTVCloud is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.  <http://www.gnu.org/licenses/>
#
# Author(s):
# © 2015 Kasra Madadipouya <kasra@madadipouya.com>

DELAY="-s"
LOCATION="-p"
SECOND=10
FOLDER_PATH=`pwd`
FRAME="-f"
FRAME_NUMBER=3
function capture {
cd $1
#echo "In the capture function"
# capture X frames
mplayer -vo png -frames $2 tv:// 

# delete first 2 frames because it is black
rm -rvf 00000001.png
rm -rvf 00000002.png
# rename the rest of pictures accordingly
total=$(ls -1 | wc -l)
for file in *.png
do
	total=$((total + 1))
	mv "$file" $total
done
}
if [ 0 -eq $# ]
then
	echo -e "No argument entered!"
	echo -e "Please use -s [second], -p [pics path] -f [how many pics in one time period >2]"
	echo -e "Default values : -s = 10, -p = pwd, -f = 3"
else
	for (( i=1; i<=$#; i++ )) 
	do
		if [ "${!i}" == $DELAY ]
		then
			i=$((i+1))
			SECOND="${!i}"
		elif [ "${!i}" == $LOCATION ]
		then
			i=$((i+1))
			FOLDER_PATH="${!i}"
		elif [ "${!i}" == $FRAME ]
		then 
			i=$((i+1))
			FRAME_NUMBER="${!i}"	
		fi
	done
fi
while [ true ]
do
	#nohup sh capture.sh $FOLDER_PATH $FRAME_NUMBER
	capture $FOLDER_PATH $FRAME_NUMBER
	sleep $SECOND
done
