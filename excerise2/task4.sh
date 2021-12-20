#!/bin/bash

file_count(){
    # echo "The file count of $1 directory is: `tree $1 | grep " files" | cut -d "," -f 2 | cut -d " " -f 2`"
    echo "The file count of $1 directory is: `tree $1 | grep " files" | cut -d " " -f 3`"

}
file_count /etc
file_count /var
file_count /usr/bin