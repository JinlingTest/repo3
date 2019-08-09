#!/usr/bin/bash
>user.dat
for USER in $*
do
id ${USER} &>/dev/null
if [ $? -ne 0 ];then
useradd ${USER} &>/dev/null
fi
uuidgen|cut -d - -f 5|tee ${USER}|passwd --stdin ${USER} &>/dev/null
echo  "${USER} `cat ${USER}`">>user.dat
done
