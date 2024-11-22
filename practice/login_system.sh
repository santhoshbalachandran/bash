#!/bin/bash

user_name="temp"
pass="temp"
login_attempt=0
max_attempts=3
while [[ "$login_attempt" -lt "$max_attempts" ]]
do
    ((login_attempt++))
    read -p "User name: " entered_user_name
    read -s -p "Password: " entered_password
    echo
    if [[ $user_name == $entered_user_name && $pass == $entered_password ]]; then
        echo -e "\nLogin successful!"
        exit 0
    fi
    echo -e "\nIncorrect credentials. Attempt $login_attempt of $max_attempts"
done
echo "Too many failed attempts. Exiting."
exit 1