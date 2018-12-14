#!/bin/bash

# stupid batch file moving script

filename='filelist.txt'
exec < $filename
counter=0

while read line
do
	echo $line
	cp $line 1A_result/$counter/
	counter=$((counter+1))
done
