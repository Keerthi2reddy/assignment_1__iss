#!/bin/bash
# gives the output as required after removing the empty lines

read -p "enter the file name: " file
# creating a new file that does not have the empty lines
files=files.txt
grep "\S" $file>$files

# editing the file accordingly
>speech.txt
while read -r line
do
awk -F~ '{print $2" once said, \""$1"\""}'files>>speech.txt
done <"$files"

# deleting the extra file
rm $files