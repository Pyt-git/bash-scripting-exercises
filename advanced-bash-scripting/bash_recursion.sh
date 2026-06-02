#!/bin/bash

# ------------------------------------------------------
# findDir.sh
# Recursively finds the directory (starting from a root)
# that contains the largest number of files (including
# all files in subdirectories)
# ------------------------------------------------------

# Validate argument
if [ $# -ne 1 ]; then
    echo "Usage: $0 directory"
    exit 1
fi

if [ ! -d "$1" ]; then
    echo "Error: '$1' is not a directory"
    exit 1
fi

# Global variables to track best directory
max_count=0
max_dir=""

# --------------------------------------------------------
# count_files DIR
# Recursively counts all files inside DIR and its children
# Updates global variables (max_count and max_dir)
# --------------------------------------------------------

count_files() {
    local dir="$1"
    local total=0

    # Count all files inside directory
    local files
    files=$(find "$dir" -maxdepth 1 -type f | wc -l)
    total=$((total + files))

    # Recursively process subdirectories
    local sub 
    for sub in "$dir"/*; do
        if [ -d "$sub" ]; then
            local sub_count
            sub_count=$(count_files "$sub")
            total=$((total + sub_count))
        fi
    done

    # Update global max if needed
    if [ $total -gt $max_count ]; then
        max_count=$total
        max_dir="$dir"
    fi

    echo $total
}


# Output result
echo "Directory with the most files: $max_dir"
echo "Total number of files (including sub-directories) is: $max_count"










    
