#!/bin/bash/
ip=$(hostname -i)
services="ssh jenkins docker"
for i in $services
do
        ps -C $i
if [ $? -ne 0 ]
then
echo -e "subject $i is not running in $ip machine \n\n team please check and fix the service" | sendmail -v ramusb950@gmail.com
else
        echo "$i is up and running"
fi
done
