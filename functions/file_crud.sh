#!/bin/zsh
# Function to check if a file exists
file_exists() {
    local file="$1"
    if [ -f "$file" ]; then
        echo "File $file exists."
    else
        echo "File $file does not exist."
    fi
}

# Function to create a new file
create_file() {
    local file="$1"
    touch "$file"
    echo "File $file created."
}

# Function to delete a file
delete_file() {
    local file="$1"
    if [ -f "$file" ]; then
        rm "$file"
        echo "File $file deleted."
    else
        echo "File $file does not exist."
    fi
}

# Function to rename a file
rename_file() {
    local old_file="$1"
    local new_file="$2"
    if [ -f "$old_file" ]; then
        mv "$old_file" "$new_file"
        echo "File $old_file renamed to $new_file."
    else
        echo "File $old_file does not exist."
    fi
}

echo_one(){
    echo $1
}


echo_one $1
file_exists $1
create_file $1