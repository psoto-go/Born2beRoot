#!/bin/bash
Architecture=$(uname -a)
CPUphy=$(lscpu -p | egrep -v '^#' | wc -l)
CPUlog=$(lscpu -p | egrep -v '^#' | sort -u -t, -k 2,4 | wc -l)
RAM1=$(free --mega | grep Mem: | awk '{print $3}')
RAM2=$(free --mega | grep Mem: | awk '{print $2}')
RAM3=$(free --mega | grep Mem: | awk '{printf("%.2f"),$3/$2*100}')
LastReboot=$(who -b | awk '{print $4}')
LastReboot2=$(who -b | awk '{print $5}')
LVM=$(lsblk | grep lvm | awk '{if ($1) {print "yes"}}'|head -n 1)
TCP=$(cat /proc/net/sockstat | awk '$1 == "TCP:" {print $3}')
USERS=$(users | wc -w)
NETWORK=$(hostname -I)
NETWORK2=$(ip link show| awk '$1 == "link/ether" {print $2}')
SUDO=$(cat /var/log/sudo/sudo.log | wc -l)
CPUcap=$(top -bn1 | grep 'Cpu(s):' |cut -c 9-| awk '{printf("%.1f%%",$1)}')
DISK=$(df -m --total | tail -1 | awk '{print $3}' )
DISK1=$(df --block-size=GB --total | tail -1 | awk '{print $2}')
DISK2=$(df --block-size=GB --total | tail -1 | awk '{print $5}')

echo "	#Architecture: "$Architecture
echo "	#CPU physical: "$CPUphy
echo "	#vCPU: "$CPUlog
echo "	#Memory Usage:  "$RAM1"/"$RAM2"MB ("$RAM3"%)"
echo "	#Disk Usage: "$DISK"/"$DISK1" ("$DISK2")"
echo "	#CPU load: "$CPUcap
echo "	#Last boot: "$LastReboot ""$LastReboot2
echo "	#LVM use: "$LVM
echo "	#Connexions TCP: "$TCP" ESTABLISHED"
echo "	#User log: "$USERS
echo "	#Network IP "$NETWORK "("$NETWORK2")"
echo "	#Sudo : "$SUDO "cmd"
