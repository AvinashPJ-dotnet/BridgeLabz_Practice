#!/bin/bash -x
read -p "enter year in format YYYY:" year
if [ $(($year%400)) == 0 ];
then
	echo "leap year";
elif [ $(($year%4)) == 0 ];
then
   echo "leap year";

elif [ $(($year%100)) == 0 ];
then
   echo "not leap year";
else
	echo "not leap year";
fi

