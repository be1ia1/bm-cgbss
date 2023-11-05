#!/bin/bash

# Author: Andrii Hula
# Date Created: 13/07/2023
# Last Modified: 22/10/2023

# Description
# Copy all files in user home to archive in current directory

# Usage
# ./backup_script.sh

echo "Hello, ${USER^}. We will now backup your home directory, $HOME"
current_dir=$(pwd)
echo "Therefore, I will save the backup in $current_dir"
tar -cf $current_dir/my_backup_"$(date +%d-%m-%Y_%H-%M-%S)".tar ~/* 2>/dev/null
echo "Backup completed successfully"

exit 0
