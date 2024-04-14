#!/bin/bash 
echo ''
# chmod 755 a02_Local_User_Demo.sh

# ############################################################
# Reading standard input, 
# Creating accounts, 
# Username Conventions, etc.

# This script creates an account on the local system
# You will be prompted for the account name and password 

# 1. Ask for the user name.
# 2. Ask for the real name.
# 3. Ask for the password.
# 4. Create the user. 
# 5. Set the password for the user.
# 6. Force password change on first login
# ############################################################

# This script creates an account on the local system
# You will be prompted for the account name and password 

# 1. Ask for the user name.
read -p 'Enter the username to create: ' USER_NAME
# 2. Ask for the real name.
read -p 'Enter the name of the persopn who this account is for: ' ACCOUNT_OWNER_NAME
# 3. Ask for the password.
read -p 'Enter the password to use for this account ' PASSWORD
# 4. Create the user. 
useradd -c "${ACCOUNT_OWNER_NAME}" -m ${USER_NAME}
# 5. Set the password for the user.
echo $PASSWORD | passwd --stdin ${USER_NAME}
# 6. Force password change on first login
passwd -e ${USER_NAME}
echo ''

