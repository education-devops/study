#! /usr/bin/bash

echo "Enter filename to substitude using sed"
read fileName

if [[ -f $fileName ]]; then
    sed -i 's/2000/8000/g' $fileName
else
    echo "$fileName doesn''t exist"
fi

