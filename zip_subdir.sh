#!/usr/bin/bash --verbose
#!/bin/sh 

# Name: find_top_10_name.sh
# Written by: Kristy Rath - September 2022
# Purpose: Zip up a lab file based on the provided subdirectory. Produces a zip file with the name format of FULLNAME_SUBDIRECTORY.zip
# Description of parameters: 
#       $fullname - string input of the user's full name
#       $subdirectory - string input of the subdirectory that will be zipped.

# Prompt for  first name and last name input. Reprompt when there is no input.
echo ">>> Enter firstname and last name (no spacing): " 
read fullname
while [ -z "$fullname" ];
do 
    echo "ERROR Missing name input."
    read -p ">>> Enter firstname and last name (no spacing): " fullname
done
echo ">>> Enter filename: "
read filename 

# Prompt for subdirectory name input. Reprompt when there is no input.
echo ">>> Enter subdirectory: " 
read subdirectory


# call the zip command producing a file with the name format of FIRSTNAME_LASTNAME_/HOME/SUBDIRECTORYNAME
echo $HOME 
zip -r ${HOME}/${fullname}_${filename}.zip ${PWD}/${subdirectory}
unzip -l ${HOME}/${fullname}_${filename}.zip