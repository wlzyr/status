#!/bin/bash

if [ ! -f "status.log" ]
then
echo -e "#-----CPU-----\n#iowait:Percentage of total CPU time spent waiting for I/O operations\n#idle:CPU idle time as a percentage of total CPU time\n#-----RAM-----\n#MemAvailable:System available memory\n#Cached:Ordinary files occupy cache pages\n#Buffers:Block device occupies the cache page" >> status.log
fi
echo "-----CPU-----" >> status.log
sar -o 1  -u 1 | sed -n '3p' >> status.log
sar -o 1 -u 1 | sed -n '7p' >> status.log
echo "-----RAM-----" >> status.log
cat /proc/meminfo | sed -n "3p" >> status.log
 cat /proc/meminfo | sed -n '5p'>> status.log
cat /proc/meminfo | sed -n '4p' >> status.log
echo "-----HDO-----" >> status.log
df -h >> status.log
