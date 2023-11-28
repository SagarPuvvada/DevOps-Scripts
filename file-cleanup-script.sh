#!/bin/bash
# File cleanup script

directory="/path/to/cleanup"
find "$directory" -type f -mtime +7 -exec rm {} \;
