#!/bin/bash -x
args1=$1
pwrofTwo=1
i=1
while [ $i -lt $args1 ] && [ $pwrofTwo -lt 256 ]
do
		pwrofTwo=$(( 2**i ));
		echo $pwrofTwo
		((i++))
done

#echo "$pwrofTwo"
