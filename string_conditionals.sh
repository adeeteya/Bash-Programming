#!/bin/bash
read c
if [ $c == 'y' ]
then
    echo "YES"
elif [ $c == 'Y' ]
then
    echo "YES"
else
    echo "NO"
fi