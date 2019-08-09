#!/usr/bin/bash
#
#
V1=1
while [ $V1 -lt 10 ]
do
if [ $((V1%2)) -eq 0 ];
then
V1=$((V1+1))
break
else 
echo $V1
fi
((V1++))
done
