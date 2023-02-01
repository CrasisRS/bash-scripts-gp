#!/bin/bash

#Backup Dir
backup_dir=~/Backup

#current date
current_date=$(date +%Y-%m-%d_%H-%M-%S)
#define name for backupfile
backup_file="$backup_dir/$current_date.tar.gz"
#Create backupdir if not exists
if [ ! -d "$backup_dir" ]; then
    mkdir "$backup_dir"
fi

#incremental backup
tar -czvf "$backup_file" --listed-incremental="$backup_dir/snapshot.file" ~/{Documents,Desktop,Pictures,Downloads,projects,Videos,Music}