#!/usr/bin/bash
#
#

MYBAK=$2
#USER=root
#PASSWORD=1234
DB=$1
MYDATE=`date +%Y%m%d-%H:%M:%S`
read -p "你要备份的数据库是${DB},你要将其备份到$MYBAK 确认用Y 否则输入N：" answer
if [ ${answer} != 'Y' ];then
echo "你没有选择Y 推推出备份"
exit 100
fi
read -p "请你输入可以执行该操作的MySQL数据库用户名：" USER
read -s -p "请你输入$USER用户名的密码：" PASSWORD
if [ ! -d ${MYBAK} ];then
mkdir -p ${MYBAK}
fi

mysqldump -u$USER -p$PASSWORD --databases $DB > ${MYBAK}/$DB_$MYDATE.sql

BAKFILE=${MYBAK}/$DB_$MYDATE.sql
if [ -f ${BAKFILE} ];then
	echo "今天是 $MYDATE $DB备份成功"
	echo "$DB已经备份到目录$MYBAK中 名为$BAKFILE"
else
	echo "备份可能失败了 请检查....."
fi
