#!/bin/bash
# Log rotation script

log_dir="/path/to/logs"
max_log_size=10M

find "$log_dir" -type f -size +$max_log_size -exec mv {} {}.old \;
