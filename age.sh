#!/bin/bash

FILE="age.txt"

if [ ! -f "$FILE" ]; then
    echo "File $FILE not found!"
    exit 1
fi

echo "People aged above 65:"

tail -n +2 "$FILE" | while read -r name city age pincode
do
    if [ "$age" -gt 65 ]; then
        echo "Name: $name"
    fi
done

