#!/bin/zsh

# specify the file name
file_name=$1

# check if file exists
if [ ! -f "$file_name" ]; then
    echo "$file_name does not exist."
    exit 1
fi

# read file line by line
while IFS= read -r line
do
    echo "$line"
done < "$file_name"