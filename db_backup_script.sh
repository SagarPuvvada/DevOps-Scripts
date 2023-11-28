#!/bin/bash
# Database backup script

db_user="username"
db_password="password"
db_name="database_name"
backup_dir="/path/to/db_backup"

mysqldump -u "$db_user" -p"$db_password" "$db_name" > "$backup_dir/db_backup_$(date +'%Y%m%d').sql"
