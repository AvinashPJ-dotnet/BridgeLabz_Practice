#!/bin/bash -x
n=5;
min=0;
max=0;
for i in `seq $n`
do
random_no=$((RANDOM%1000));
if [ $min -eq 0 ] && [ $max -eq 0 ];
then
	max=$random_no;
	min=$random_no;

elif [ $random_no -gt $max ]
then
	max=$random_no;
elif [ $random_no -lt $min ]
then
	min=$random_no;
else
	echo
fi
done
echo "Maximum: $max and Minimum: $min";
