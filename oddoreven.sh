#!/bin/bash
i=1
while [ $i -lt 100 ]
do
    if [ $((i%2)) -eq 1 ]
    then
        echo $i
        i=$((i+1))
    else
        i=$((i+1))
    fi
done