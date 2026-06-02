# code that displays files only and returns their quantity

#!/bin/bash
count=0

for item in *; do
    if [-f "$item"]; then
        echo "$item"
        count=$((count + 1))
    fi
done
echo "Number of files: $files"
