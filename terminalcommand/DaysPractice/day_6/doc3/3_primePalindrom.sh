#!/bin/bash

function checkPrime() {
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
}

#check palindrom
function checkPalindrom() {
n=$1
   sum=0
   while [ $n -gt 0 ]
   do
      r=$(($n%10));
      sum=$(( $(($sum*10))+$r));
      n=$(($n/10));
   done
	printf $sum;
	if [ $sum -eq $1 ]
	then
		printf " :palindrom \n";
	else
		printf " :not a palindrom \n";
	fi
primeResult=$(checkPrime $sum);
printf '\n';
echo $primeResult
}


#execution start from here
num=$1
primeResult=$(checkPrime $num);
palindromResult=$(checkPalindrom $num);
echo $primeResult;
printf '\n'
echo $palindromResult; 


