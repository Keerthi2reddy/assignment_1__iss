#!/bin/bash

read -p "enter the file name: " file
# command to print the output of the file after removing the empty lines
grep "\S" $file