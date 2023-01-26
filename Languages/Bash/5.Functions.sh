#!/bin/bash
: '
function funcName ()
{
    echo $1 $2 $3 $4

}

funcName Hello, world! ASD ASD'
#----------------------------------------------------
: '
function funcCheck ()
{
    returnValue="Using Function right now"
    echo "$returnValue"
}

funcCheck'
#----------------------------------------------------
function funcCheck ()
{
    returnValue="I love linux"
}

returnValue="I love MAC"
echo $returnValue

funcCheck
echo $returnValue
