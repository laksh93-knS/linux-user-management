#!/bin/bash

# Linux User Management Script 

while true
do
    echo ""
    echo "===== User Management Menu ====="
    echo "1. Create User"
    echo "2. Delete User"
    echo "3. List Users"
    echo "4. Exit"
    echo "==============================="

    echo "Enter your choice:"
    read choice

    if [ "$choice" = "1" ]; then
        echo "Enter username to create:"
        read username
        sudo useradd $username
        echo "User created successfully"

    elif [ "$choice" = "2" ]; then
        echo "Enter username to delete:"
        read username
        sudo userdel $username
        echo "User deleted successfully"

    elif [ "$choice" = "3" ]; then
        echo "List of users:"
        cut -d: -f1 /etc/passwd

    elif [ "$choice" = "4" ]; then
        echo "Exiting..."
        break

    else
        echo "Invalid choice, try again"
    fi

done
