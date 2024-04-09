#!/bin/bash

free_space=$(df / | tail -n1 | tr -s ' ' | cut -d ' ' -f 5 | tr -d %)
exec > freespace_$DATE.txt
if [ $free_space -gt 50 ]
then
logger -t LOGGER 'WARNING - free space left < 50%'
fi
