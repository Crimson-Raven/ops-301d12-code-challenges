#!/bin/bash

# Script: Ops 301 Challenge 05
# Author: Rebecca Childs
# Date of last revision: 04/05/2024
# Purpose: Compress and clear contents of log file.

# Copy a log file from /var/log to our directory
#cp var/log/syslog ./syslog-test05

# Print the file size of log files before compressing them.

# Compress the content of the log files
# var/log/syslog
# var/log/wtmp
BACKUPS="backup"
LOG_FILES=("/var/log/syslog" "/var/log/wtmp")

# Generate timestamp in format - YYYYMMDDHHMMSS
TIMESTAMP=$(date +"%Y%m%d%H%M%S")
#echo $TIMESTAMP
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
#cat /dev/null > "$file"
        fi
        done

# Variable that calls backup directory
#BACKUP_DIR="backups"
#LOG_FILES=(syslog-test)

# Clear contents of log file

# Print to the screen the file size of compressed file

# Compare size of the compressed file to the size of the original file. 