#!/bin/zsh

# Remote server details
remote_user="username"
remote_host="example.com"
remote_path="/path/to/remote/content"

# Local backup directory
backup_dir="/path/to/local/backup"

# Create backup directory if it doesn't exist
mkdir -p "$backup_dir"

# Backup remote content using rsync
rsync -avz "$remote_user@$remote_host:$remote_path" "$backup_dir"
