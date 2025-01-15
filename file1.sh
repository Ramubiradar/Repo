#!/bin/bash
echo "enter the string to check the file, link or directory"
read a
if [ -f $a ]; then
	echo "then given string is file"
elif [ -d $a ]; then
	echo "then given string is directory"
elif [ -L $a ];then
	echo "then given string is link"
else
	echo "the given string is not a file,directory or link"
fi
