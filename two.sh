#!/bin/bash
echo " enter the first number"
read a 
echo " enter the second number"
read b
if [ $a -gt $b ]
then 
	echo "a is greater than b"
else
	echo "b is greater than a"
fi



