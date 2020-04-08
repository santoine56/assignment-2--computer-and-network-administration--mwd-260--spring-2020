#!/bin/bash

#creating arguments for each file for the script
_access.log="$1"
_access.log.backup="$2"

#adds data into access.log file
touch /tmp/access.log
ls -l /tmp/access.log{1}

#checks if access.log file is empty or not
[ $# -eq 0 ] && { echo "Usage: $0 filename"; exit 1; }
[ ! -f "$_access.log" ] && { echo "Error: $0 file cannot be found."; exit 2; }

if [ -s "$_access.log" ]

then
	echo "$_access.log is being moved to access.log.backup file."
  #moves access.log file to d
    mv "$each_file" "$each_file%${access.log}}${access.log.backup}"
else
  #returns an exit status of 0
	echo "$?"
fi

#received help from class lecture and ayberciti.biz faq resources
