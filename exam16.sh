#!/usr/bin/bash
#
#
for i in {1..9}
do
if [ $((i%2)) -eq 0 ];then
#continue
#break
exit
fi
echo $i
done
echo out
