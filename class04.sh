#!/bin/bash

# Script: Ops 301 Challenge 04
# Author: Rebecca Childs
# Date of last revision: 03/28/2024
# Purpose: 

# Main Loop
    while true; do

# Print "Hello World!" onto screen
    echo "Hello world!"

# Ping Self
    ping -c 192.168.12.187
    
# Show IP configuration for this computer
    ipconfig
    
# Exit
    echo "Exiting..."
    break
done