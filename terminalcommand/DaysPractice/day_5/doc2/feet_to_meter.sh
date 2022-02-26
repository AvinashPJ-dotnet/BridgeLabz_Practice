#!/bin/bash -x
hight=60;
width=40;
feet_to_meter=10.764;
hw=$(($hight*$width));
meter=`echo $hw $feet_to_meter | awk '{print $1/$2}'`;
echo "$hight * $width in squre meter is: $meter ";

