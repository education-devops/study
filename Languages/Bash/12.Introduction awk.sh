#!/bin/bash

echo "Enter filename to print from awk"
read fileName

if [[ -f $fileName ]]; then
    awk '/Linux/ {print $3,$4}' $fileName
else
    echo "$fileName doesn''t exist"
fi

#---------------------------------------------

awkfile.txt

This is Windows 1000
This is Linux 2000
This is MAC 3000
#---------------------------------------------
Enter filename to print from awk
awkfile.txt