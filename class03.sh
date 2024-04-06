#!/bin/bash

# Script: Ops 301 Challenge 03
# Author: Rebecca Childs
#Date of last revision: 03/27/2024
# Purpose: Change file permissions

# Show file permissions for test file
# ls -al
# Ask user for file name
echo "Please provide a file to change it's permissions"
read -r input

# echo $text.txt

# Change Permissions
chmod -R 777 "$input"
cd "$input"

# Print contents of folder and changed permissions
ls -l 