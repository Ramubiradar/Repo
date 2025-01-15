#!/bin/bash

echo "enter the file to read"
read FILE
# Check if the file exists
if [ ! -f "$FILE" ]; then
    echo "File $FILE not found!"
fi

# Read and process the file
if [ -f "$FILE" ]; then
awk -F, 'NR > 1 && $2 > 65 { print $1 }' "$FILE"
fi

