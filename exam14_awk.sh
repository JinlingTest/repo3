#!/usr/bin/bash
#
#
for i in  `awk '/^192/{print $1}' /etc/hosts`
do
ping -c1 ${i} &> /dev/null
if [ $? -eq 0 ];then
echo "${i} online"
else
echo "${i} offline "
fi
done
