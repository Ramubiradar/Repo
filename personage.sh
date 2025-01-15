#!/bin/bash

# File containing the data
FILE="agedata"

# Check if the file exists
if [[ ! -f "$FILE" ]]; then
    echo "File $FILE not found!"
    exit 1
fi

# Read and process the file
awk -F, 'NR > 1 && $2 > 65 { print $1 }' "$FILE"
