# !/bin/bash

# code that checks whether the parameter is other than a file or a directory
if [[! (-f "$1" || -d "$1")]]; then
    echo "1 is neither a file nor a directory"
else
    echo "x is e"
fi

