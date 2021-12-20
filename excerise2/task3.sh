#!/bin/bash

file_count(){
    echo "the file count is: `tree | grep files | cut -d "," -f 2 | cut -d " " -f 2`"
}
file_count