#!/bin/bash

# =========================================
# Linux User Management System
# Author: Your Name
# Description: Menu-driven Bash script to manage Linux users
# =========================================

while true
do
    echo "================================="
    echo "   Linux User Management System"
    echo "================================="
    echo "1. Create User"
    echo "2. Delete User"
    echo "3. List Users"
    echo "4. Exit"
    echo "================================="

    read -p "Enter your choice: " choice

    case $choice in

        1)
            read -p "Enter username: " username
            id "$username" &>/dev/null
            if [ $? -eq 0 ]; then
                echo "User already exists!"
            else
                sudo useradd "$username"
                echo "User '$username' created successfully."
            fi
            ;;

        2)
            read -p "Enter username: " username
            id "$username" &>/dev/null
            if [ $? -ne 0 ]; then
                echo "User does not exist!"
            else
                sudo userdel "$username"
                echo "User '$username' deleted successfully."
            fi
            ;;

        3)
            echo "------ System Users ------"
            cut -d: -f1 /etc/passwd
            ;;

        4)
            echo "Exiting program..."
            break
            ;;

        *)
            echo "Invalid choice. Please try again."
            ;;

    esac

done
