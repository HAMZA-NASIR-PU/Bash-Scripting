#!/bin/bash

src="/etc/hosts"
dest="/tmp/hosts_backup_$(date +%F_%H%M%S)"
cp "$src" "$dest"
echo "Backup created at $dest"
