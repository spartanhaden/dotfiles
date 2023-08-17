#!/bin/bash

# Look for a folder called *_venv
venv_folder=$(find . -maxdepth 1 -type d -name "*_venv" | head -n 1)

# Check if *_venv exists
if [ -z "$venv_folder" ]; then
    echo "Error: *_venv virtual environment not found. Please create a virtual environment
 first."
    exit 1
fi

# Activate virtual environment
source "${venv_folder}/bin/activate"

# Check if a command is passed as an argument
if [ -z "$1" ]; then
    echo "Error: No command passed as an argument. Please pass a command to run (e.g., python3 main.py)."
    exit 1
fi

# Run the command passed by the user
echo "Running command: $*"
eval "$*"

# Deactivate the virtual environment
deactivate
