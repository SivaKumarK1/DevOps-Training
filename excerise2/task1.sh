#!/bin/bash

read -p "Enter path of folder or file: " -r input

if [ -f "$input" ]
then
    echo "$input is a regular file. Exiting with status 0 !!"
    exit 0
elif [ -d "$input" ]
then
    echo "$input is a directory. Exiting with status 1 !!"
    exit 1
else
    echo "$input some other type of file. Exiting with status 2 !!"
    exit 2
fi