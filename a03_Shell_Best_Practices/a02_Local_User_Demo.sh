#!/bin/bash 
echo ''
# chmod 755 a02_Local_User_Demo.sh

# Display the UID and username of the user executing this scrpt.
# Display if the user is the root user or not.

# Display the UID (Special precept variables)
echo "Your UID is ${UID}"

# Display the username 
USER_NAME=$(id -un)
echo "Your username is ${USER_NAME}"

# Display the username 
USER_NAME=`id -un`
echo "Your username is ${USER_NAME}"

# Display the username 
echo "Your username is `id -un`"

# Display if user is the root user or not.
if [[ "${UID}" -eq 0 ]]
then 
    echo "You are root" 
else 
    echo "You are not root"
fi 