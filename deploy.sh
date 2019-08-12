#!/usr/bin/bash
#
#

fun_host()
{
hostnamectl set-hostname s56.example.com
}

NIC_FILE=/etc/sysconfig/network-scripts/ifcfg-ens33
UUID=`uuidgen ens33`
fun_ip()
{
sed -i '/^UUID/d' ${NIC_FILE}
echo "UUID=${UUID}" >> ${NIC_FILE}
sed -i '/^IPADDR/c\IPADDR=192.168.0.56' ${NIC_FILE}
sed -i '/^GATEWAY/c\GATEWAY=192.168.0.2' ${NIC_FILE}
sed -i '/^DNS1/c\DNS1=8.8.8.8' ${NIC_FILE}
systemctl restart network
}

fun_selinux()
{
sed -i '/^SELINUX/s/enforcing/disabled/' /etc/sysconfig/selinux
setenforce 0
}
fun_ip
fun_host
fun_selinux
systemctl stop firewalld
systemctl disable firewalld
sed '$a\192.168.0.56 s56.example.com' /etc/hosts


