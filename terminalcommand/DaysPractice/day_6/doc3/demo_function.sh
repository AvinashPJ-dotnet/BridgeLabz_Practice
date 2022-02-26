#!/bin/bash

function addition() {
	sum=$(($1 + $2));
	echo $sum;
	mulres=$(multiplication $1 $2)
	echo "$mulres multiple result"
}
function multiplication() {
   mul=$(($1 * $2));
   echo $mul;
}


result=$(addition $((RANDOM%10)) $((RANDOM%10)) );

echo $result;


sum=$(addition 4 6);
echo $sum;
