#!/bin/bash -x
n=$1
harmonic=0
for ((i=1;i<=n;i++))
do
	harmonicnumber=`echo $i | awk '{print 1/$1}'`
	harmonic=`echo $harmonicnumber $harmonic | awk '{print $2+$1}'`
done
echo "Harmonic number is :"$harmonic
