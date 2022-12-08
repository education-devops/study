#!/bin/bash

#echo "Hello bash script" > file.txt
#-------------------------------------------------
: '
This is the comment'
#-------------------------------------------------
#cat >> file.txt
#-------------------------------------------------
: '
cat << creative
this is hello creative text
add another line
creative'
#-------------------------------------------------
: '
count=10
#if [  $count -eq 9 ]
if (( $count < 9 ))
then
    echo "the condition is true"
elif (( $count > 9 ))
then
    echo "second condition is true"
else
    echo "the condition is false"
fi'
#-------------------------------------------------
: '
num=2

#if [ "$num" -gt 1 ] && [ "$num" -lt 3 ]
#if [[ "$num" -gt 1 && "$num" -lt 3 ]]
#if [ "$num" -gt 1 -o "$num" -gt 3 ]
#if [[ "$num" -gt 1 || "$num" -lt 3 ]]
if [ "$num" -gt 1 ] || [ "$num" -lt 3 ]
then
    echo "Num is correct"
else
    echo "Num is not correct"
fi'
#-------------------------------------------------
# loops
: '
number=1
while [ $number -lt 10 ]
#until [ $number -ge 10 ]
do
    echo $number
    number=$(( number+1 ))
done'
#-------------------------------------------------
: '
#for i in 1 2 3 4 5; do
#for i in {0..20}; do
#for i in {0..20..2}; do
for (( i=0; i<=10; i++ )); do
    if [ $i -eq 3 ]; then #|| [ $i -eq 7 ]; then
        continue
    fi
    echo $i
done'
#------------------------------------------------
#echo $0 $1 $2 $3
#------------------------------------------------
: '
args=("$@")

echo ${args[0]} ${args[1]} ${args[2]}
echo $@
echo $#'
#------------------------------------------------
: '
while read line; do
    echo $line
done < ${1:-/dev/stdin}'
#------------------------------------------------
#ls -la 1>file1.txt 2>file2.txt
#ls +la 1>file1.txt 2>file2.txt
#ls -la 1>file1.txt 2>&1
#ls +la 1>file1.txt 2>&1
#ls -la >& file1.txt
#ls +la >& file1.txt
#------------------------------------------------
: '
MESSAGE="Hello LinuxHint Audience"
export MESSAGE
./secondScript.sh

secondScript.sh
#!/bin/bash
echo "The message from helloScript is : $MESSAGE"

chmod +x secondscript.sh'
#------------------------------------------------
echo "enter 1st string"
read st1

echo "enter 2nd string"
read st2

: '
#if [ "$st1" == "$st2" ]; then
if [ "$st1" \< "$st2" ]; then
    echo "$1 is smaller than $st2"
elif [ "$st1" \> "$st2" ]; then
    echo "$st2 is smaller than $st1"
else
    echo "both strings are equal"
fi'

: '
c=$st1$st2
echo $c'

#echo ${st1^}
#echo ${st1^^}
#echo ${st1^l}













