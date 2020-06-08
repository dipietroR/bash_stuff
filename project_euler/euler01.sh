#!/bin/bash

n=0
echo "$n"

for ((i=1;i<1000;i++));
do
    if (($i % 3 == 0 )) || (( $i % 5 == 0)); then
       n=$(( n + i ))
    fi
done
echo "$n"
