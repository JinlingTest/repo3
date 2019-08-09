#!/usr/bin/bash
#
#


for V1 in `seq 100`
do
	#SUM=$SUM+V1
	#SUM=$((SUM+V1))
	SUM=`expr $SUM + $V1`
done
echo $SUM
