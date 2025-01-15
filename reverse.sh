#!/bin/bash
echo "enter file"
read file
count=$(cat $file|wc -l)
echo "$count"
while read line
do 
	head -$count $file | tail -1
	count=`expr $count - 1` 
done<$file


