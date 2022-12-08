#!/bin/bash

#sudo apt-get install ssmtp
: '
nano /etc/ssmtp/ssmtp.conf

root=testingmail430@gamil.com
mailhub=smtp.gmail.com:587
AuthUser=testingemail430@gmail.com
AuthPass=
UseSTARTTLS=yes'
#----------------------------------------------------
#ssmtp testingemail430@gmail.com
#----------------------------------------------------
#sudo apt-get install mailutils postfix
#mail -s "simple text" client.corp12.un <<< HELLO!!!


echo "Write subject text"
read head
echo "Write email"
read email
echo "Write text"
read text
echo "Write file name"
read file
mail -s "$head" "$email" <<< "$text" -A "$file"
