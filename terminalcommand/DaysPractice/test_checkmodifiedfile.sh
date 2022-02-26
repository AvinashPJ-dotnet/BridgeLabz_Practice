#!/bin/bash -x
d1=`stat modifyfile.txt | grep Modify:| awk '{print $2}'`
d2=`stat modifyfile2.txt | grep Modify:| awk '{print $2}'`
if [ "$d1" = "$d2" ]; then
    echo "same day"
elif expr "$d1" "<" "$d2" >/dev/null; then
	if [ -d 'backup/' ]; then
		mv modifyfile.txt backup/;
	
	else
		mkdir backup;
		mv modifyfile.txt backup/;
	fi
else
    echo "no back up"
fi
