#!/bin/bash

read -p "Please Enter Path: " -r dir

if [ -d "$dir" ]; then
    echo `find $dir -size 0 >> some.txt`
else
    echo "Error :: ${dir} does not exists"
    exit 1
fi
cat some.txt
