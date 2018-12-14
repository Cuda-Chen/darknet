#!/bin/bash

# stupid batch image detection then crop script

filename='filelist.txt'
exec < $filename
counter=0

while read line
do
	echo $line
	./darknet detector test ./fish/cfg/obj.data ./fish/cfg/yolov3.cfg fish_train.backup $line
	cd '1A_result'
	mkdir $counter
	cd $counter
	cp ../../*.jpg .
	cd ../../

	counter=$((counter+1))
	#echo $counter
	#if [ $counter -gt 2 ]; then
	#	echo "get the hell out"
	#	break
	#fi
done
