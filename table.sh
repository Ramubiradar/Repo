#!/bin/bash
echo "enter the num"
read num
result=1
while [ $result -lt 10 ]
do
	table=`expr $num \* $result`
	result=`expr $result + 1`
	echo -e  "the table of $num\n $table"
done
if [ $result -eq 0 ]
then 
	echo "table completed"
fi


