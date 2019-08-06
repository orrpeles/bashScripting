#!/bin/bash
for fn in tom dick harry; do echo "$fn"
done

for X in red green blue
do
	echo $X
done

for X in *.html
do
	grep -l '<UL>' "$X"
done
