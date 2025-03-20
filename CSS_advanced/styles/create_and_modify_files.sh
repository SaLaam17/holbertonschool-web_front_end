#!/bin/bash

# This script generates a series of CSS files based on an existing file, starting from the 4th file up to the 30th.
# Each new file copies the content of the previous one and can be modified as needed.

# Define the base file that exists already
base_file="3-style.css"

# Loop to create files from 4-style.css up to 30-style.css
for (( i=4; i<=30; i++ ))
do
    # Copy the content of the previous file to the current file
    cp "$((i-1))-style.css" "$i-style.css"
    
    # Here, you can customize each new file as needed. 
    # For example, adding CSS rules or modifying the content based on the file number.
    
    # Example: Adding a custom comment to indicate the file is being modified
    echo "/* Custom changes for $i-style.css */" >> "$i-style.css"
    
    # You can add more specific CSS modifications or rules for each file here.
    # For example, changing colors, fonts, or adding new sections.
    # echo "body { background-color: #f3f3f3; }" >> "$i-style.css"  # Modify the body background color
done

# Script completed. All files from 4-style.css to 30-style.css are created and modified accordingly.
