#!/bin/bash -x
n=$1
for ((i=1;i<=n;i++))
do
	echo "2 power $i is:"$((2**$i))
done
