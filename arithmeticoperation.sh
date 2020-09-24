#!/bin/bash
round()
{
echo $(printf %.$2f $(echo "scale=$2;(((10^$2)*$1)+0.5)/(10^$2)" | bc))
};

rounde()
{
echo $(printf %.$2f $(echo "scale=$2;(((10^$2)*$1)-0.5)/(10^$2)" | bc))
};

read expression
expression=${expression// }
answer=$(echo "scale=4; $expression " | bc -l)
check=$(echo " $expression " | bc)
if [ $check -gt 0 ]
then
    echo $(round $answer 3);
else
    echo $(rounde $answer 3);
fi
#write a whole expression in this input 
#siilar to eval() functio in python
#program from hackerank