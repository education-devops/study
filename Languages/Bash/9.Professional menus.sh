#!/bin/bash
: '
select car in BMW MERCEDES TESLA ROVER TOYOTA; do
#    echo "You have selected $car"
    case $car in
        BMW)
            echo "BMW selected";;
        MERCEDES)
            echo "MERCEDES selected";;
        TESLA)
            echo "TESLA selected";;
        ROVER)
            echo "ROVER selected";;
        TOYOTA)
            echo "TOYOTA selected";;
        *)
            echo "ERROR! Please select between 1..5";;
    esac
done'
#-------------------------------------------------------
echo "press any key to continue"

while [ true ]; do
    read -t 3 -n 1
if [ $? = 0 ]; then
    echo "You have terminated the script"
    exit;
else
    echo "Waiting for you to press the key!!!"
fi
done
