#!/usr/bin/python3

# Script: Ops 301 Challenge 06
# Author: Rebecca Childs
# Date of last revision: 04/06/2024
# Purpose: Create a Python script that executes a few bash commands successfully.
    # Requirements:
    # The Python module “os” must be utilized.
    # At least three variables must be declared and referenced in Python.
    # The Python function print() must be used at least three times.
    # Include execution of the following bash commands inside your Python script: whoami, ip a, lshw -short

import os

# Define commands
command1 = "whoami"
command2 = "ip a"
command3 = "lshw -short"

# Execute commands using os.popen
print("Executing command:", command1)
output1 = os.popen(command1).read().strip()
print(output1)

print("Executing command:", command2)
output2 = os.popen(command2).read()
print(output2)

print("Executing command:", command3)
output3 = os.popen(command3).read().strip()
print(output3)

# Print success message
print("All commands executed successfully!")

# Explanation:

# Import os: Imports the os module.
# Declare Variables: Three command strings (command1, command2, command3) store the bash commands.
# Execute Commands: os.popen(commandX) opens a pipe to execute each command and capture the output, 
# .read() reads the output from the pipe.
# .strip() removes leading/trailing whitespace (optional for command1, recommended for command3).
# Output is printed along with informative messages.
# Print Success Message: Informs the user about successful execution.