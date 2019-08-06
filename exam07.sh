#!/usr/bin/env bash
#
#


if [ ${USER} != "root"  ]; then
echo "该脚本只有root才可以执行";
exit 100
fi


if [ ! -f /var/log/messages ];then
echo "文件不存在"
exit 101
fi

function clear_log
{
tail -1000 /var/log/messages > /var/log/message1000
> /var/log/message
cat /var/log/message1000 > /var/log/messages
}

clear_log
if [ $? -eq 0 ];then
echo "the messages log is Clean!!"
else
echo "不知道为什么 这个没执行成功"
fi
