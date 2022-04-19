#!/bin/bash

read -p "enter the file name: " file
# command to print the number of words
wc -w "$file" | awk '{print $1}'
