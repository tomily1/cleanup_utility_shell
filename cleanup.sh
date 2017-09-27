#!/bin/bash
# before running `sudo chmod 755 cleanup.sh`, !Be very Careful!!!, I will not be liable of any damage caused
# Tomilayo Israel Olamide

echo 'Welcome, this is a find and delete utility for certain files' 
echo "1. Input 1 to search for a file."
echo "2. Input 2 to search for specific files with certain extensions and delete. e.g .log, .script"

read option

if [ $option == 1 ]; then
  echo "Input the specific folder location eg. /Users/tomily/Desktop/tomily/cleanup_utility_shell"
  echo "******* DO NOT USE ./ FOR FOLDER LOCATION ***"
  read location 
  echo "input extension of file you want to clean up eg. .script, .exe, .clean, etc"
  read file_extension

  if [ ! -z "$location" -a "$location" != " " -a ! -z "$file_extension" -a "$file_extension" != " " ]; then
    # echo $location
    # echo "${location}""/*""${file_extension}"
    find "${location}""/*""${file_extension}" -mtime +10 -type f -delete
  else
    echo location
    echo file_extension
    echo "Wrong option, Bye :)"
  fi
elif [ $option == 2 ]; then
  echo you chose $option
else
  echo wrong option, try again $option
fi

# find ./my_dir -mtime +10 -type f -delete