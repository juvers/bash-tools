#!/bin/zsh

# Specify the directory path
directory="/path/to/directory"

# Loop through each file in the directory
for file in "$directory"/*; do
    # Check if the file is a regular file
    if [[ -f "$file" ]]; then
        # Get the file name and extension
        filename=$(basename "$file")
        extension="${filename##*.}"
        
        # Generate a new file name
        new_filename="new_${filename}"
        
        # Rename the file
        mv "$file" "$directory/$new_filename"
        
        echo "Renamed $filename to $new_filename"
    fi
done


# Specify the directory containing the files to rename
directory="/path/to/your/directory"

# Navigate to the directory
cd "$directory"

# Loop through each file in the directory
for file in *; do
    
    # Conditionally rename files based on specific patterns or rules
    if [[ "$file" == *"_old" ]]; then
        # Remove "_old" from the filename
        new_filename="${file%_old}"
        elif [[ "$file" == *.txt ]]; then
        # Convert .txt files to .html
        new_filename="${file%.txt}.html"
    else
        # Add a prefix to all other files
        new_filename="prefix_${file}"
    fi
    
    # Rename the file using the mv command
    mv "$file" "$new_filename"
    
done

# rename files like this WhatsApp Image 2023-12-06 at 13.33.20.jpeg
# To
# busybees-xmas-1.jpeg using the index count
index=0
for file in *; do
    # Conditionally rename files based on specific patterns or rules
    if [[ "$file" == "WhatsApp"* ]]; then
        new_filename="busybees-xmas-$index.jpeg"
        mv "$file" "$new_filename"
        index=$((index+1))
    fi
done
