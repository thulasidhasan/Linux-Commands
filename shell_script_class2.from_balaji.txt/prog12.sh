#!/bin/bash
echo "Cpu,Mem,Net,"
cpu=`lscpu |grep 'CPU(s):'|head -1|awk '{print $2}'`
Mem=` free -m |head -2 |tail -1|awk '{print $2}'`
Net=` cat /proc/net/dev|awk  '{print $1}'|tail -1`
echo "$cpu,$Mem,$Net,"




