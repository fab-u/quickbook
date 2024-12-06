#!/bin/zsh

# Set the template file and destination folder
template="$HOME/dev/quickbooks/template_python.ipynb"  # Path to the template file
destination_folder="$HOME/dev/quickbooks/temp"  # Path to the destination folder

# Find the highest existing number in the destination folder
max_number=$(ls "$destination_folder" | grep -oE 'quickbook_py_([0-9]+)\.ipynb' | grep -oE '[0-9]+' | sort -n | tail -1)

# If there are no numbered files, start at 1
next_number=$((max_number + 1))

# Define the new file name
new_file="$destination_folder/quickbook_py_$next_number.ipynb"

# Copy the template to the new numbered file
cp "$template" "$new_file"

# Open it in a new VS code window
code -n "$new_file"
