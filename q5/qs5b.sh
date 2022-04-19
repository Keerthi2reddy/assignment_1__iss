#!/bin/bash

read -p "enter the string :" s
# command to print the subsequent letters of the reverse ordered string
echo $s | rev | tr z Z | tr a-y b-z | tr Z a 