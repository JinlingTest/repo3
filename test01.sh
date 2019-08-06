#!/usr/bin/env bash
#
#
#read -p "Please input a Number: " V1
read -p "Please input you name: " V1

if [ -z "${V1}" ];then
echo "你没有输入任何信息"
else
echo "你输入的是 ${V1}"
fi
