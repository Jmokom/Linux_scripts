#!/bin/bash

# Free memory output to a free_mem.txt file
free -h > ~/projects/backups/freemem/free_mem.txt

# Disk usage output to a disk_usage.txt file
du -h > ~/projects/backups/diskuse/disk_usage.txt

# List open files to a open_list.txt file
lsof > -/projects/openlist/open_list.txt

# Free disk space to a free_disk.txt file
df -h > ~/projects/freedisk/free_disk.txt


# Creating research directory for output
mkdir ~/research 2> /dev/null

echo -e "\n777 Files:" >> ~/research/sys_info.txt
find / -type f -perm 777 >> ~/research/sys_info.txt
echo -e "\nTop 10 processes" >> ~/research/sys_info.txt
ps aux -m | awk '{print $1, $2, $3, $4, $11}' | head >> ~/research/sys_info.txt

