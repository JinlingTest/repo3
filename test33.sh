#!/usr/bin/bash
#
#

for i in `seq 9`
do
if [ $((i%2)) -ne 0 ];then
echo $i
fi
done

