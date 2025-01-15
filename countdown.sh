#!/bin/bash
echo "enter the number to start the countdown"
read num
while [ $num -gt 0 ]
do
	echo "Counting down : $num"
	num=`expr $num - 1`
done
if [ $num -eq 0 ]
then 
	echo "count down stopped"
fi










