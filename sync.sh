#!/bin/bash

# Define the username and password
username="jontavd"
password="4Pn4PpbeVK"

#Umount
echo 'Umount'
mount | awk '/smbfs/ && !/TimeMachine/ {system("umount " $3)}'

# #Mount
echo 'Mount'
mount_smbfs //$username:$password@192.168.0.201/CloudDrive/GDrive /Users/jontavd/local/DS220/GDrive
mount_smbfs //$username:$password@192.168.0.201/homes/jontavd/OffDrive /Users/jontavd/local/DS220/SDrive

# origin="/Users/jontavd/local/DS220/GDrive/GoPro"
# destination="/Users/jontavd/local/DS220/SDrive/GoPro"

# rsync -abviuzP $origin/ $destination/

# if [ $? -eq 0 ]; then
#     # Command1 succeeded, so run the second command
#     rm -rf $origin
# else
#     # Command1 failed, display an error message or take appropriate action
#     echo "Error: Command1 failed."
# fi


