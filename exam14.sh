#!/usr/bin/bash
#
#
for i in {1..8}
do
IPADD=192.168.0.5$i
ping -c1 ${IPADD} &> /dev/null
if [ $? -eq 0 ];then
echo "${IPADD} online"
else
echo "${IPADD} offline "
fi
done
