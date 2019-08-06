#!/bin/bash
# Command Substitution

files="$(ls)"
web_files=`ls .` 
echo "$files" #quotes are required to create new line between each result
echo "$web_files"

# reference: https://unix.stackexchange.com/questions/48392/understanding-backtick

A=`cat /etc/passwd | head -n1`
echo $A

B="$(cat /etc/passwd | head -n1)"
echo $B

