#!/bin/bash
read -p "Enter a number: " num
if ! [[ "$num" =~ ^-?[0-9]+$ ]]
then
    echo "Invalid input. Please enter a number"
    exit 1
fi

if (( num == 0 )); then
    echo "You entered a zero"
    exit 0
fi

if [[ "$num" =~ ^-{1} ]]; then
    echo "You entered a negative number"
else
    echo "You entered a positive number"
fi