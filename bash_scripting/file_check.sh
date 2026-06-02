#!/bin/bash

# code that checks whether parameter is a file
if [-f "$1"]; then
    echo "1 is a file"
else
    echo "1 is not a file"
fi

# code that checks whether paramater is a directory
if [-d "$1"]; then
    echo "1 is a directory"
else
    echo "1 is not a directory"
fi

# code that checks whether the parameter is other than a file or a directory
if [[! (-f "$1" || -d "$1")]]; then
    echo "1 is neither a file nor a directory"
else
    echo "x is e"
fi
