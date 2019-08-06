#!/usr/bin/env bash
#
#


if [ ${USER} != "root"  ]; then
echo "该脚本只有root才可以执行";
exit
fi


function clear_log
{
tail -1000 /var/log/messages > /var/log/message1000
> /var/log/message
cat /var/log/message1000 > /var/log/messages
}

clear_log
