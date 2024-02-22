#!/bin/bash

# Directory to search for git repositories
search_dir="$1"

# Check if search directory is provided
if [[ -z "$search_dir" ]]; then
  echo "Usage: $0 <directory>"
  exit 1
fi

# Convert to absolute path
search_dir="$(realpath "$search_dir")"

# Find all directories and pipe to while loop
find "$search_dir" -type d -print | while IFS= read -r dir; do
  if [[ -d "${dir}/.git" ]]; then
    echo "Git repository found: $dir"
  fi
done
