#!/bin/bash
# cd to Dropbox folder
cd $1
# capture X frames
mplayer -vo png -frames 3 tv:// 

# delete first 2 frames because it is black
rm -rvf 00000001.png
rm -rvf 00000002.png
# rename the rest of pictures accordingly
total=$(ls -1 | wc -l)
total=$((total + 1))
mv 00000003.png $total.png

