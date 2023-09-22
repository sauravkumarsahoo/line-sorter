#!/bin/bash

# Check if a filename is provided as an argument
if [ $# -eq 0 ]; then
  echo "Usage: $0 <filename>"
  exit 1
fi

filename="$1"

# Check if the file exists
if [ ! -e "$filename" ]; then
  echo "Error: File '$filename' does not exist."
  exit 1
fi

# Check if the file is readable
if [ ! -r "$filename" ]; then
  echo "Error: Cannot read '$filename'. Check file permissions."
  exit 1
fi

# Sort the file content alphabetically and overwrite the original file
sort "$filename" -o "$filename"

echo "File '$filename' has been sorted alphabetically and saved."
