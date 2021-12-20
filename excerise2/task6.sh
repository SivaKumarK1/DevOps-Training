#!/bin/bash

logging_func(){
    m="The Random message is: $RANDOM"
    echo $m
    logger -i -p user.info $m
    cat /var/log/syslog | tail -n3 
}
logging_func
logging_func
logging_func

exit 0