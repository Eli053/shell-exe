#!/bin/bash

# Get the number of connections for a user
connections=$(netstat -an | grep ESTABLISHED | grep -c username)

# Create the filename with the current date and time
filename="number_connection-$(date +'%d-%m-%Y-%H:%M').txt"

# Write the number of connections to the file
echo $connections > $filename

# Archive the file and move it to the Backup directory
tar -czvf ~/Job8/Backup/$filename.tar.gz $filename && rm $filename

