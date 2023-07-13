#!/bin/bash

# Author: Andrii Hula
# Date Created: 13/07/2023
# Last Modified: 13/07/2023

# Description
# Copy all files in user home to archive

# Usage
# ./backup_script.sh


tar -cvf ~/projects/bm-cgbss/my_backup_"$(date +%d-%m-%Y_%H-%M-%S)".tar ~/* 2>/dev/null

exit 0
