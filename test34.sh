#!/usr/bin/bash
#
#
num=1
while [ $num -lt 10 ]
do
if [ $((num%2)) -ne 0 ];then
echo $num
fi
((num++))
done
