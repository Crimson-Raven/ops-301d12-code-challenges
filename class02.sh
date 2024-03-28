#!/bin/bash

# Script: Ops 301 Challenge 02
# Author: Rebecca Childs
#Date of last revision: 03/27/2024
# Purpose: Timestamp a log file

# Declaring Variables
today=$(date +%m%d%y)
echo $today

# Copy testing_folder file from /var/log and append timestamp to file
cp /var/log/testing_folder ./testing_folder.$today
echo $today >> testing_folder.032724