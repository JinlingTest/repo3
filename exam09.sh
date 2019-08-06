#!/usr/bin/bash
#
#


read -p "请你输入名字： " name
if [[ "${name}" == bob || ${name} == alice ]];then
echo "录取"
else
echo "不录取"
fi
