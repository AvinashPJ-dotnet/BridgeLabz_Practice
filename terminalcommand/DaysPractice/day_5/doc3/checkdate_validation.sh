#!/bin/bash -x
d=$1
m=$2
dayLimit=20
march=3
jun=6
seqNumber=`seq $march $jun`
if [ $m -ge $march ] || [ $m -le $jun ];
then
	case $m in
	3) if [ $d -ge $dayLimit ];
		then
			echo True
		else
			echo False
		fi
	;;
	6) if [ $d -le $dayLimit ];
      then
      	echo True;
      else
      	echo False;
  		fi
	;;
	*)echo True;
	;;
esac

else
	echo False
fi
