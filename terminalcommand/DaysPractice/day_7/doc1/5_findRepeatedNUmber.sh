#!/bin/bash -x
n=100
index=0
for ((i=0;i<n;i++))
do
if [[ $(($i%11)) -eq 0 && $i -ne 0 ]]
then
	arr[index]=$i
	((index++))
fi
done
echo ${arr[@]}
