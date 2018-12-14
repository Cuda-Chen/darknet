#!/bin/bash

# stupid batch directory renaming script

input='filelist.txt'
exec < $input
counter=0

while read line
do
	filename=$(basename -- "$line")
	# extension="${filname##*.}"
	filename="${filename%.*}"
	echo $filename
	mv 1A_result/$counter 1A_result/$filename
	counter=$((counter+1))
done
