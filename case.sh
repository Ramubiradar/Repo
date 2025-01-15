#!/bin/bash
echo -e "Press 1 to create 2 files\nPress 2 to change permission of file\nPress 3 to search a pattern\nPress 4 to list all files in present directory\nSELECT A NUMBER"
read num
case $num in 
"1")
        echo "enter the name of first file"
        read file1
        echo "enter name of second file"
        read file2
        touch $file1 $file2
        path=pwd
        echo "Two files $file1 $file2 created in $path path"
;;
"2")
        echo "enter the name of the file to change permission"
        read name
        if [ -e $name ]
        then
                echo "file exists"
        else
        echo "file not there"
                exit
        fi
        echo "enter the permission in xxx format"
        read per
        sudo chmod $per $name
        echo "Permission changed"
;;
"3")
        echo "enter the pattern to search"
        read pat
        echo "enter the name of file to search"
        read file_name
        grep -in "$pat" $file_name
;;
"4")
        path=pwd
        echo "all files in current directory $path are"
        ls -lrt
;;
esac
