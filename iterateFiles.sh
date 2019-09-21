#!/bin/bash
# Iterate over files in a text file and copy them somewhere else
# Resource: https://stackoverflow.com/questions/1521462/looping-through-the-content-of-a-file-in-bash

cat < /home/linux-psyche/Music/ozzmosis.txt | while read -r line #read -r manage whitespaces
do 
cp /home/linux-psyche/Music/"$line" /home/linux-psyche/Music/Ozzmosis3
done
