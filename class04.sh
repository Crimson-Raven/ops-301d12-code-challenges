#!/bin/bash

# Script: Ops 301 Challenge 04
# Author: Rebecca Childs
# Date of last revision: 03/28/2024
# Purpose: 

# Main Loop
while true; do
    echo Menu
    echo "1. Prints Hello World!"
    echo "2. Ping Self"
    echo "3. IP Info"
    echo "4. Exit"
    read -p "Enter a number" choice 

if [[ $choice == 1 ]]; then
    echo "Hello world!"
    read -p "Press enter to return to Main Menu"
elif [[ $choice == 2 ]]; then
    ping -c 4 192.168.12.187
    read -p "Press enter to return to Main Menu"
elif [[ $choice == 3 ]]; then
    ip addr show
    read -p "Press enter to return to Main Menu"
elif [[ $choice == 4 ]]; then
    echo "Exiting..."
    exit 0
    fi
    done