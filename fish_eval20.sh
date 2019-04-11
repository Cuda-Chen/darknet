#!/bin/bash

# bash script for detection fish in fish_eval20

filenames='fileList.txt'
#filenames='test.txt'
exec < $filenames

while read line
do
	echo $line
	s=${line##*/}
	echo ${s}
	result_dir=${s%.*}
	echo ${result_dir}
	./darknet detector test ./fish/cfg/obj.data ./fish/cfg/yolov3.cfg fish_train.backup $line
	cd 'fish_eval20_result'
	mkdir ${result_dir} 
	cd ${result_dir}
	mv ../../[0-9]*.jpg .
	cd ../../
done
