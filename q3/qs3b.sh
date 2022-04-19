#!/bin/bash

read -p "enter the file name: " file

# command to print the number of lines
awk 'BEGIN{count=0} //{count++} END{print count}' $file
