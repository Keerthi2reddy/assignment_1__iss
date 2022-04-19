#!/bin/bash

read -p "enter the string :" s
array=${s}
length=${#array}

# code to print the first half in reverse order
for((i=$length/2-1; i>=0;i--))
do
reverse="$reverse${s:$i:1}"
done

# code to print the second half in original order
for((i=$length/2; i<=$length;i++))
do
reverse="$reverse${s:$i:1}"
done

# printing the final string
echo "$reverse"