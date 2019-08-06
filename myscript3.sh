#!/bin/bash

n=1
while [ $n -le 100000 ]; do
	echo $n
 	let n++
done

X=0
while [ $X -le 20 ]
do
	echo $X
	X=$((X+1))
done

ls -1 | while read fn
do
	echo "$fn"
done
