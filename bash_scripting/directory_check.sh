#!/bin/bash

# code that checks whether paramater is a directory
if [-d "$1"]; then
    echo "1 is a directory"
else
    echo "1 is not a directory"
fi

