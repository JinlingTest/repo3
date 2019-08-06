#!/usr/bin/env bash
#
#
read -p "Please input a Number: " V1
if [ ${V1} -gt 100 ];then
echo "你刚才输入的大于100"
else
echo "你刚才输入的不大于100"
fi
