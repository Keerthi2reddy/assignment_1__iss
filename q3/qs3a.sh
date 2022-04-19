#!/bin/bash

read -p "enter the file name: " file
# command to print the number of bytes
wc --bytes "$file" | awk '{print $1}'