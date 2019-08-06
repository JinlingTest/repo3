#!/usr/bin/env bash
#
#
#read -p "Please input a Number: " V1
read -p "Please input you name: " V1

if [ ${V1} == "root" ];then
echo "你是管理员"
else
echo "你是普通用户"
fi
