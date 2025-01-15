#!/bin/bash
count=0
while true
do
	echo "enter the password"
	read pass
	if [ $pass == "devops" ]
	then
		echo "password is correct"
		break
	else
		count=`expr $count + 1`
		echo "password is incorrect"
	fi
	if [ $count -le 3 ]
	then 
		continue
	else
		echo "you have reached maximum attempts"
		break
	fi 
done

