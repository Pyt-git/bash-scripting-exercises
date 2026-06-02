# code that recursively checks directories and returns the files they contain

#!/bin/bash
list_files() {
    for item in "$1"/*; do
        if [ -f "$item" ]; then
            echo "$item"
        elif [ -d "$item" ]; then
            list_files "$item"
        fi
    done
}
