#!/bin/bash
ls | grep -i ".txt$" > output
while read line
do
	name=$(echo $line | awk '{print $1}')
	mv "$name" "${name%.txt}.html"
done<output

