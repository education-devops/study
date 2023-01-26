#!/bin/bash

cat <<EOF> filegrep.txt

This is Linux
This is Windows
This is MAC
This is Linux
This is Windows
This is MAC
This is Linux
This is Windows
This is MAC
This is Linux
This is Windows
This is MAC
This is Linux
This is Windows
This is MAC
This is Linux
This is Windows
This is MAC
This is Linux
This is Windows
This is MAC
This is Linux
This is Windows
This is MAC
This is Linux
This is Windows
This is MAC
EOF
#--------------------------------------------------------------------
echo "Enter filename to search text from"
read fileName

if [[ -f $fileName ]]; then
    echo "Enter the text to search"
    read grepvar
    grep -inv $grepvar $fileName
else
    echo "$fileName doesn''t exist"
fi
