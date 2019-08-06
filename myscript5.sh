#!/bin/bash
# arrays

array=(`ls`)
len=${#array[*]}
echo "directory has $len files. They are:"
i=0
while [ $i -lt $len ]; do
	echo "$i: ${array[$i]}"
	let i++
done

