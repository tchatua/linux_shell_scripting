#!/bin/bash 
echo ''
# chmod 755 a02_Local_User_Demo.sh

# ##############################################################
# Display the UID and username of the user executing this scrpt.
# Display if the user is the ec2-user user or not.

# 1. Display the UID
# 2. Only display if the UID does NOT match 1000
# 3. Display the username 
# 4. Test if the command is succeeded
# 5. Use a string test conditional
# 6. Test for != (not equal) for the string
# ##############################################################

# # 1. Display the UID
echo "Your UID is ${UID}"

# 2. Only display if the UID does NOT match 1000
UID_TO_TEST_FOR='1000'

if [[ "${UID}" -ne "${UID_TO_TEST_FOR}" ]]
then
    echo "Your UID does not match ${UID_TO_TEST_FOR}"
    echo ''
    exit 1
fi

# 3. Display the username 
USER_NAME=$(id -un)

# 4. Test if the command is succeeded
if [[ "${?}" -ne 0 ]]
then 
    echo "The id command did not execute successfylly"
fi
echo "The username is ${USER_NAME}"

# 5. Use a string test conditional
USER_NAME_TO_TEST_FOR='ec2-user'
if [[ "${USER_NAME}" = ${USER_NAME_TO_TEST_FOR} ]]
then 
    echo "Your username matches ${USER_NAME_TO_TEST_FOR}"
fi 

# 6. Test for != (not equal) for the string
if [[ "${USER_NAME}" != ${USER_NAME_TO_TEST_FOR} ]]
then
    echo "Your username does not matches ${USER_NAME_TO_TEST_FOR}"
    exit 1
fi
exit 0
echo ''