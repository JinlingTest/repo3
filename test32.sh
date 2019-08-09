#!/usr/bin/bash
#九九乘法表 领用for循环

for x in `seq 9`
do
	for y in `seq ${x}` 
	do        
   	echo -n "$x*$y=$((x*y))  "
	done
	echo ""
done
