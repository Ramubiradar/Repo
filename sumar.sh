#!/bin/bash
num=$@
sum=0
for i  in $num
do
echo "$i"
sum=`expr $sum + $i`
done
echo "the sum of array elements is $sum"

