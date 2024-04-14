#!/bin/bash
echo ''
# chmod 755 a01_Local_User_Demo.sh

# This script display various informtation to the screen

# Display "Hello"
echo 'Hello'

# assign a value to a variable 
WORD='script'

# Display that value using the variable
echo "$WORD"

# Demonstrate that single quotes cause variable to NOT get expanded
echo '$WORD'

# Combine the variables with hard-coded text 
echo "This is a shell $WORD"

# Display the contents of the variable using an alternative syntax 
echo "This is a shell ${WORD}"

# Append text to the variable 
echo "${WORD}ing is fun!"

# Show how NOT to append text to a variable 
# This deosn't work:
echo "$WORDing is fun!"

# Create a new variable 
ENDING='ed'

# Combine the two variables 
echo "This is ${WORD}${ENDING}"

# Change the value stored in the ENDING variable. (Reassignment)
ENDING='ing'
echo "${WORD}${ENDING} is fun!"

# Reassign value to ENDING 
ENDING='s' 
echo "You are going to write many ${WORD}${ENDING} in this lab"







