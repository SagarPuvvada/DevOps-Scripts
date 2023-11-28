#!/bin/bash
# Backup script

backup_dir="/path/to/backup"
source_dir="/path/to/source"

tar -czvf "$backup_dir/backup_$(date +'%Y%m%d').tar.gz" "$source_dir"
