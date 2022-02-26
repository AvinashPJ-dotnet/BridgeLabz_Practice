#!/bin/bash -x
a=$1
b=$2
c=$3

cal1=$((a+$((b*c))))
cal2=$(($((a%b))+c))
cal3=$((c+$((a/b))))
cal4=$(($((a*b))+c))

if [[ $cal1 -ge $cal2 && $cal1 -ge $cal3 && $cal1 -ge $cal4 ]]
then
	echo "max $cal1";
elif [[ $cal2 -ge $cal1 && $cal2 -ge $cal3 && $cal2 -ge $cal4 ]]
then
	echo "max $cal2";
elif [[ $cal3 -ge $cal2 && $cal3 -ge $cal1 && $cal3 -ge $cal4 ]]
then
	echo "max $cal3";
elif [[ $cal4 -ge $cal2 && $cal4 -ge $cal3 && $cal4 -ge $cal1 ]]
then
	echo "max $cal4";
fi

if [[ $cal1 -lt $cal2 && $cal1 -lt $cal3 && $cal1 -lt $cal4 ]]
then
	echo "min $cal1";
elif [[ $cal2 -lt $cal1 && $cal2 -lt $cal3 && $cal2 -lt $cal4 ]]
then
	echo "min $cal2";
elif [[ $cal3 -lt $cal2 && $cal3 -lt $cal1 && $cal3 -lt $cal4 ]]
then
	echo "min $cal3";
elif [[ $cal4 -lt $cal2 && $cal4 -lt $cal3 && $cal4 -lt $cal1 ]]
then
	echo "min $cal4";
fi
