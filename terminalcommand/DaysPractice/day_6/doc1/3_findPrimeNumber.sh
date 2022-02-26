#!/bin/bash -x
n=$1
prime=0
for ((i=2;i<n;i++))
do
	if [ $(( n%i )) -eq 0 ]
	then
		prime=1
	fi
done
if [ $prime -eq 0 ]
then
	echo "$n: is prime number"
else
	echo "$n: is not prime number"
fi
