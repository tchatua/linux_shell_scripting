#!/bin/bash

# Prompt for user input
read -p 'Enter the username to create: ' USER_NAME
read -p 'Enter the name of the person who this account is for: ' ACCOUNT_OWNER_NAME

# Check if the username already exists
if id "$USER_NAME" &>/dev/null; then
    echo "Error: User '$USER_NAME' already exists." >&2
    exit 1
fi

# Prompt for password without displaying input
read -s -p "Enter the password to use for the account: " PASSWORD
echo

# Create the user
useradd -c "$ACCOUNT_OWNER_NAME" -m "$USER_NAME"
if [ $? -ne 0 ]; then
    echo "Error: Failed to create user '$USER_NAME'." >&2
    exit 1
fi

# Set the password for the user
echo "$USER_NAME:$PASSWORD" | chpasswd
if [ $? -ne 0 ]; then
    echo "Error: Failed to set password for user '$USER_NAME'." >&2
    exit 1
fi

# Force password change on first login
passwd -e "$USER_NAME"
if [ $? -ne 0 ]; then
    echo "Error: Failed to force password change for user '$USER_NAME'." >&2
    exit 1
fi

echo "User '$USER_NAME' created successfully."
