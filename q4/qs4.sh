#!/bin/bash

# reading the array
IFS=', ' read -r -a array

l=${#array[@]}

for ((i = 0; i<l; i++))
do    
    for((j = 0; j<l-i-1; j++))
    do
    
        if [ ${array[j]} -gt ${array[$((j+1))]} ]
        then
            # swapping the elements
            temp=${array[j]}
            array[$j]=${array[$((j+1))]}  
            array[$((j+1))]=$temp
        fi
    done
done

# printing the array
echo ${array[*]}