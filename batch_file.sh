#!/bin/bash

filename='filelist.txt'
exec < $filename

while read line
do
	echo $line
done
