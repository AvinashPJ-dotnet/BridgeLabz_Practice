#!/bin/bash -x
min=0
max=0
function secondLargest(){
arr=$1
n=$2
echo "arr "${arr[@]};
echo "size "$n;
}

for ((i=0;i<10;i++))
do
	randomNumber=$((RANDOM%1000))
	if [ ${#randomNumber} -eq 3 ]
	then
		randArray[i]=$randomNumber
	else
		i=$(($i-1))
	fi
done
return_secondLargest=$(secondLargest ${randArray[@]} ${#randArray[@]});
