#!/bin/bash
# This script is designed to teach beginners the fundamental concept of
# variables in Bash scripting. We will cover how to declare, assign,
# use, and manipulate variables.
#
# Learning Objective: Understand and effectively use variables in Bash.

# =============================================================================
# 1. What are Variables?
# =============================================================================
# Variables are like containers that hold data. In Bash, this data can be
# text (strings), numbers, or even the output of commands.
#
# Variables are crucial for making scripts dynamic, reusable, and readable.

# =============================================================================
# 2. Declaring and Assigning Variables
# =============================================================================
# To declare and assign a value to a variable, you use the following syntax:
# VARIABLE_NAME=value
#
# - VARIABLE_NAME: Should be in uppercase (convention, not strictly enforced).
#                   Avoid spaces and special characters.
# - = : The assignment operator. NO spaces around the equals sign.
# - value : The data you want to store.

# Assigning a string value
MY_NAME="Alice"

# Assigning a numerical value (Bash treats numbers as strings by default unless
# performing arithmetic operations, which we'll see later).
MY_AGE=30

# Assigning the output of a command to a variable
# The $(command) syntax is called "command substitution". It executes the
# command inside the parentheses and captures its standard output.
CURRENT_DATE=$(date +"%Y-%m-%d") # Gets the current date in YYYY-MM-DD format

# Another example: getting the current directory
CURRENT_DIR=$(pwd)

# =============================================================================
# 3. Using Variables
# =============================================================================
# To access the value stored in a variable, you prefix its name with a dollar sign ($).
# This is called "variable expansion".
#
# You can enclose the variable name in curly braces {} for clarity, especially
# when the variable name might be adjacent to other characters.
# ${VARIABLE_NAME}

echo "Hello, my name is $MY_NAME."
echo "I am ${MY_AGE} years old."

# Using variables that hold command output
echo "Today's date is: $CURRENT_DATE"
echo "You are currently in: $CURRENT_DIR"

# =============================================================================
# 4. Variable Concatenation (Combining Strings)
# =============================================================================
# You can combine strings by placing variables next to each other or concatenating
# them with literal strings.

GREETING="Welcome, "
FULL_GREETING="$GREETING$MY_NAME!"
echo "$FULL_GREETING"

# Concatenating with literal strings
USER_INFO="User: $MY_NAME, Age: $MY_AGE"
echo "$USER_INFO"

# =============================================================================
# 5. Modifying Variables
# =============================================================================
# You can reassign a new value to an existing variable.

MY_AGE=31
echo "After one year, I am now $MY_AGE years old."

# You can also append to strings
MY_NAME="$MY_NAME Smith"
echo "My full name is now $MY_NAME."

# =============================================================================
# 6. Special Variables (Brief Introduction)
# =============================================================================
# Bash provides several built-in special variables.
# $0 : The name of the script itself.
# $1, $2, ... : Positional parameters (arguments passed to the script).
# $@ : All positional parameters as separate words.
# $* : All positional parameters as a single word.
# $? : The exit status of the last executed command (0 usually means success).

echo "This script is called: $0"
# To test $1, $2 etc., run this script like: ./your_script_name.sh arg1 arg2

# =============================================================================
# 7. Example Usage
# =============================================================================
# Imagine you want to create a directory and a file inside it.

# Define directory name
TARGET_DIR="my_project_files"

# Define file name
LOG_FILE="activity.log"

# Create the directory. Use 'mkdir -p' to avoid errors if it already exists.
echo "Creating directory: $TARGET_DIR"
mkdir -p "$TARGET_DIR" # Using quotes to handle spaces in names if they occur

# Construct the full path to the log file
LOG_FILE_PATH="$TARGET_DIR/$LOG_FILE"

# Create the log file and add a timestamp to it.
echo "Creating log file: $LOG_FILE_PATH"
echo "Log started on $(date): Script executed by $MY_NAME" > "$LOG_FILE_PATH"

# Verify the file creation (optional)
echo "Contents of $LOG_FILE_PATH:"
cat "$LOG_FILE_PATH"

# This script demonstrates the basic usage of variables.
# Practice by changing the values, adding more variables, and using them
# in echo statements or for file operations.
```

# Example Usage (How to run this script and see its output):
#
# 1. Save the code above into a file named `bash_variables_tutorial.sh`.
# 2. Make the script executable: `chmod +x bash_variables_tutorial.sh`
# 3. Run the script: `./bash_variables_tutorial.sh`
#
# You will see output showing the values of the variables, greetings,
# and the creation of a directory and a log file.
#
# To test positional parameters ($1, $2, etc.), you would run it like:
# `./bash_variables_tutorial.sh John 25`
# And then you could add `echo "Received argument 1: $1"` and
# `echo "Received argument 2: $2"` to the script to see them.