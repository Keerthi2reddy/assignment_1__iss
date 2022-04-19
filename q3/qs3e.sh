#!/bin/bash

read -p "enter file: " file

function f() {
    awk '
    BEGIN { FS="[^a-zA-Z]+"} {
        for(i=1;i<=NF;i++){
            data = $i
            array[data]++
        }
    }
    END {
        for(words in array)
        {
            if(array[words]>1)
        printf("Word: %s - Count of repetition: %d\n", words, array[words])
        }
    } '
}
cat $file | f