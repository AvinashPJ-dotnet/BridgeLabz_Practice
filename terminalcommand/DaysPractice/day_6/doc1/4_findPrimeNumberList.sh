#!/bin/bash -x
s=$1
n=$2
for ((i=$s;i<=n;i++))
do
	prime=0
	if [[ $s -eq 1 || $s -eq 2 ]]
	then
		echo $i "is prime number"
	else
		for ((j=2;j<$i;j++))
		do
			if [ $(( i%j )) -eq 0 ]
			then
				prime=1
			fi
		done
		if [ $prime -eq 0 ]
		then
			echo $i "is prime number"
		fi
	fi
done
