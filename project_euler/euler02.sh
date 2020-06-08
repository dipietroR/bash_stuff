#!/bin/bash

a=1
b=1

# current fib number
c=1
mysum=0

while [ $c -le 4000000 ]
do
    c=$((a+b))
    a=$b
    b=$c

    if [ $(($c % 2)) -eq 0 ]; then
        mysum=$((c+mysum)) 
    fi
done
        
echo "my sum: $mysum" 

