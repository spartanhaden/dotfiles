#!/bin/bash

# Check if requirements.txt exists
if [ ! -f "requirements.txt" ]; then
    echo "Error: requirements.txt file not found."
    exit 1
fi

# Check if Python 3 is installed
if ! command -v python3 &> /dev/null; then
    echo "Error: Python 3 is not installed."
    exit 1
fi

# Check if python3-venv is installed (Ubuntu/Debian)
if ! dpkg-query -W -f='${Status}' python3-venv 2>/dev/null | grep -q "ok installed"; then
    echo "python3-venv is not installed. Installing python3-venv..."
    sudo apt-get update
    sudo apt-get install python3-venv -y
fi

# Get the name of the parent folder
parent_folder="$(basename "$(pwd)")"

# Name the virtual environment
venv_name="${parent_folder}_venv"

if [ ! -d "$venv_name" ]; then
    # Create virtual environment
    echo "Creating virtual environment '$venv_name'..."
    python3 -m venv "$venv_name"
fi

# Activate virtual environment
source "$venv_name/bin/activate"

# Install or update requirements
echo "Installing or updating requirements from 'requirements.txt'..."
pip install -r requirements.txt

echo "Virtual environment '$venv_name' is ready!"