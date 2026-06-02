#!/bin/bash

# code that checks whether parameter is a file
if [-f "$1"]; then
    echo "1 is a file"
else
    echo "1 is not a file"
fi
