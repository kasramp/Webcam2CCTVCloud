#!/bin/bash

while [ true ]
do
	nohup sh capture.sh
	sleep $1

done
