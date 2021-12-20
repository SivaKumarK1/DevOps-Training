#!/bin/bash

m="The Random message is: $RANDOM"
echo $m
logger -p user.info $m
cat /var/log/syslog | tail -n1
exit 0