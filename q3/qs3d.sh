#!/bin/bash

read -p "enter the file name: " files

# command to print the number of words in each line
# the last will not be read unless the pointer is shifted to the line after the last line
let l=0
while read line;
do
(( l++ ))
p="$(wc --words <<< "$line")"
echo "line no:$l count of words: $p"

done <$files