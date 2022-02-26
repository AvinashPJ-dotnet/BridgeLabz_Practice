#!/bin/bash
for file in `ls *.log.1`
do
	folderName=`echo $file | awk -F. '{print $1}'`
	extension=`echo $file | awk -F. '{print "."$2"."$3}'`
	date=`date "+%d%m%Y"`
	newfileName="$folderName-$date$extension";
	mv $file $newfileName
	echo $newfileName;
done
