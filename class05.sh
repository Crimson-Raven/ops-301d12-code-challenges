#!/bin/bash

# Script: Ops 301 Challenge 05
# Author: Rebecca Childs
# Date of last revision: 04/05/2024
# Purpose: Compress and clear contents of a log file.

# Copy a log file from /var/log to our directory
#cp var/log/syslog ./syslog-test05

# var/log/syslog
# var/log/wtmp
BACKUPS="backup"
LOG_FILES=("/var/log/syslog" "/var/log/wtmp")

# Generate timestamp in format - YYYYMMDDHHMMSS
TIMESTAMP=$(date +"%Y%m%d%H%M%S")

# Make backup directory
mkdir -p "$BACKUPS"

for file in "${LOG_FILES[@]}"; do
    FILE_SIZE=$(wc -c "$file" | awk '{print $1}')
    FILE_NAME=$(basename "$file")
    zip -r "$BACKUPS/$FILE_NAME-$TIMESTAMP.zip" "$file"
    echo "compressing $BACKUPS/$FILE_NAME-$TIMESTAMP.zip"
    cat /dev/null > "$file"
    COMPRESS_FILE_SIZE=$(wc -c "$BACKUPS/$FILE_NAME-$TIMESTAMP.zip" | awk '{print $1}')
    echo "File size before compression: $FILE_SIZE"
    echo "File size after compression: $COMPRESS_FILE_SIZE"
    if [[ $FILE_SIZE > $COMPRESS_FILE_SIZE ]]; then
        echo "Compression successful: Compressed file is smaller than original file size."
    else
        echo "Compression unsuccessful: Compressed file is larger than original file size."
        fi
        done


# Explanation:

# Generate timestamp in format - YYYYMMDDHHMMSS
# TIMESTAMP=$(date +"%Y%m%d%H%M%S")

# Variable that calls backup directory:
#BACKUP_DIR="backups"
#LOG_FILES=(syslog-test)

# Clear contents of log file:
# cat /dev/null > "$file"

# Print to the screen the file size of compressed file:
#    echo "File size before compression: $FILE_SIZE"
#    echo "File size after compression: $COMPRESS_FILE_SIZE"

# Compare size of the compressed file to the size of the original file:
# if [[ $FILE_SIZE > $COMPRESS_FILE_SIZE ]]; then
#        echo "Compression successful: Compressed file is smaller than original file size."
#    else
#        echo "Compression unsuccessful: Compressed file is larger than original file size."