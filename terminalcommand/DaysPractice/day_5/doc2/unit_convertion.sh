#!/bin/bash -x
ONE_FEET=12
read -p "enter inch value " inch
feet=`echo $ONE_FEET $inch | awk '{print $2/$1}'`
echo "$inch inch is $feet feet"
