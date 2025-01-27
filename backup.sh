#!/bin/bash

# Prompt the user for a filename
read -p "Enter the filename to back up: " filename

# Define the backup directory
backup_dir="backups"

# Check if the file exists
if [ ! -f "$filename" ]; then
    echo "Error: File '$filename' not found."
    exit 1
fi

# Ensure the backup directory exists
mkdir -p "$backup_dir"

# Define the backup file path
backup_file="$backup_dir/$filename"

# Check if a backup already exists
if [ -e "$backup_file" ]; then
    echo "Backup already exists."
else
    cp "$filename" "$backup_file"
    echo "Backup completed."
fi
