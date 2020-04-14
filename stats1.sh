#SHELL SCRIPT TO PRINT PROCESS NAME ,MEMORY,CPU AND DISK USAGE
#!/bin/bash

HOST_NAME=$(hostname)
DATE_TIME=$(date "+%d-%m-%Y  %H:%M:%S")
CPU=$(top -b -n 1 -d1 | grep "Cpu(s)" |awk '{print $2}' |awk -F. '{print $1}')
MEMORY=$(free |grep Mem |awk '{print $3/$2 * 100.0}')
DISK=$(df -h |column -t |awk '{print $5}' | tail -n 1 |sed 's/%//g')
PROCESS=$(ps -eo comm,stime,pcpu,pmem |egrep -v '(0.0)|(%CPU)')


echo 'HOST_NAME        DATE        TIME   CPU(%)   MEM(%)   DISK(%)'
echo "$HOST_NAME  $DATE_TIME   $CPU    $MEMORY    $DISK"
echo 'process      Cpu_Time  cpu%  mem%'
echo "$PROCESS"
