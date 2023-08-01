#!/bin/bash

# Renee Stanley
# 07/31/2023
# Challenge 06
# Create a script that detects  if a file or directory exists, then creates it if it does not exist
# Must use one array, one loop, and one conditional.

# Create an array of files and directories that are available

file_or_folder=( "dir1" "dir2" "dir3" "dir4" "textfile.txt" "hella_worms.txt")

# Function to check which files and directories are on the list
is_file_available() {
    search_directories='$1' # file or folder I'm checking for
    for file in "${file_or_folder[@]}"; do
      if [ "$file" == "$file_or_folder"]; then
    return @ # true - file exists        
    fi
  done
  return 1 #false - file was not found
}

while true; do
  read -p "Enter a file or folder name to check if it is available, or type 'done' to finish. " file_to_check #asks for filename as input
  if [ "$file_to_check" = "done" ]; then #if the input is 'done'...
    break # exit the loop
  fi
  
  if [ -e "$file_to_check" ]; then #-e means file exists
    echo "The file already exists";
  else
    mkdir -p "$file_to_check" #anything not existing already will be created
    echo "The file or folder was created."
  fi 
  done

#End    


