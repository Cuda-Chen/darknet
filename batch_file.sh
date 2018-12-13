#!/bin/bash

filename='filelist.txt'
exec < $filename
counter=0

while read line
do
	echo $line
	counter=$((counter+1))
	echo $counter
done
