#!/bin/bash

random_num=$(( $RANDOM % 100 + 1 ))
entered_num=0
while [ "$random_num" -ne "$entered_num" ]
do
    read -p "Generated a number between 1 and 100. Guess the number generated: " entered_num
    if ! [[ "$entered_num" =~ ^-?[0-9]+$ ]]; then
        echo "Invalid input. Enter a number between 1 and 100"
        continue
    fi

    if [[ $entered_num -gt 100 || $entered_num -lt 1 ]]; then
        echo "Invalid input. Enter a number between 1 and 100"
        continue
    fi

    if [ $random_num -eq $entered_num ]; then
        echo "Congratualtions! You guessed the number!"
        exit 0
    fi

    if [ $random_num -gt $entered_num ]; then
        echo "Too low! Try again."
    else
        echo "Too high! Try again."
    fi
done