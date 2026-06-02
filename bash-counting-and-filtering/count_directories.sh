# code that displays directories only and returns their quantity

#!/bin/bash
count=0

for item in *; do
    if [-d "$item"]; then
        echo "$item"
        count=$((count + 1))
    fi
done
echo "Number of directories: $count"
