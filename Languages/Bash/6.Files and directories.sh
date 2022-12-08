#!/bin/bash

#mkdir -p Directory2
#-------------------------------------------
: '
echo "Enter directory name to check"
read direct

if [ -d "$direct" ]; then
    echo "$direct exists"
else
    echo "$direct doesn''t exist"
fi'
#-------------------------------------------
: '
echo "Enter the file name to create"
read fileName

touch $fileName'
#-------------------------------------------
: '
echo "Enter fileName to check"
read fileName

if [[ -f "$fileName" ]]; then
    echo "$fileName exists"
else
    echo "$fileName doesn''t exist"
fi'
#-------------------------------------------
: '
echo "Enter fileName in which you want to read"
read fileName

if [[ -f "$fileName" ]]; then
    echo "Enter the text that you want to append"
    read fileText
    echo "$fileText" >> $fileName
else
    echo "$fileName doesn''t exist"
fi'
#-------------------------------------------
: '
echo "Enter fileName in which you want to read"
read fileName

if [[ -f "$fileName" ]]; then
    while text= read -r line; do
        echo "$line"
    done < $fileName
else
    echo "$fileName doesn''t exist"
fi'
#-------------------------------------------
: '
echo "Enter fileName in which you want to read"
read fileName

if [[ -f "$fileName" ]]; then
    rm -iv $fileName
#    echo "file has been deleted succefully"
else
    echo "$fileName doesn''t exist"
fi'
#-------------------------------------------

echo "Enter direct in which you want to read"
read direct

if [[ -d "$direct" ]]; then
    rm -rfvi $direct
#    echo "direct has been deleted succefully"
else
    echo "$direct doesn''t exist"
fi


































