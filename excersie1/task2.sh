#!/bin/bash

read -p "Please Enter Path: " -r dir

if [ -d "$dir" ]; then
    echo "the number of directories in the path are: `ls -d $dir/* | wc -l`"
    echo "the number of directories and sub-sirectories are:  `tree -d $dir| grep directories | cut -d " " -f 1` "
    echo "thank you"
else 
    echo "Error :: ${dir} does not exists"
    exit 1
fi