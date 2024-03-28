#!/bin/bash

# Script: Ops 301 Challenge 03
# Author: Rebecca Childs
#Date of last revision: 03/27/2024
# Purpose: Change file permissions

# Show file permissions for test file
ls -al
# Ask user for file name
echo "Please provide a file to change it's permissions"
read test.txt

echo $test.txt

# Change Permissions
chmod 755

# See changes
ls -al