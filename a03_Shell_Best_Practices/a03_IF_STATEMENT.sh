#!/bin/bash 
echo ''
# chmod 755 a02_Local_User_Demo.sh

# ########################################
# Display if user is the root user or not.
# ########################################

# # Display the UID (Special precept variables)
# echo "Your UID is ${UID}"
# # Display the username
# USERNAME=$(id -un)
# echo "your username is ${USERNAME}"

USERNAME=$(id -un)

# Display if user is the root user or not.
if [[ "${UID}" -eq 0 ]] # exit value
then 
    echo "Your UID is ${UID}"
    echo "You are root" # root always has UID 0
else 
    echo "Your UID is ${UID}"
    echo "Your username is ${USERNAME}"
    echo "You are not root"
fi 

echo ''