#!/bin/bash
size=$(df -h | awk -F " " 'NR==2 {print $(NF-1)}' | sed 's/%//g')
if [ $size -gt 30 ]
then 
	echo -e "Subject: Current usuage is more than thresold\n\n  please check and resolve the issue" | sendmail -v ramusb950@gmail.com
fi

