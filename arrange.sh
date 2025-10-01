#!/bin/bash

if [ ! -d "files" ]; then
  echo "Error: Directory 'files' not found."
  exit 1
fi

for file_path in files/*
do

  if [ -f "$file_path" ]; then
    file_name=$(basename "$file_path")
    

    first_char=${file_name:0:1} # first character
    
    destination_folder=$(echo "$first_char" | tr '[:upper:]' '[:lower:]')
    

    if [ -d "$destination_folder" ]; then
      mv "$file_path" "$destination_folder/"
    fi
  fi
done

echo "File arrangement complete."
