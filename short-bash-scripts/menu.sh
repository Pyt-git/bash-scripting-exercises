# code that displays a menu, asks the user for a choice and displays user choice

#!/bin/bash
echo "Menu:"
echo "1) Option 1"
echo "2) Option 2"
echo "3) Option 3"

echo -n "Enter your choice: "
read choice

case "$choice" in
    1) echo "you chose option 1";;
    2) echo "you chose option 2";;
    3) echo "you chose option 2";;
    *) echo "invalid choice";;
esac
