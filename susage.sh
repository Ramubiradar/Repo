#!/bin/bash
size=$(df -h . | awk 'NR==2 {print$(NF-1)}' | sed 's/%/ /g')
if [ $size -gt 30 ]
then
  echo "subject: current usage is more than 30% please check and do the needfull" | sendmail -v ramusb950@gmail.com
fi
