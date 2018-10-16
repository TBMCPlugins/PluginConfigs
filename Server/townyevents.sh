#!/bin/bash
shopt -s nullglob
fs=(*.gz)
#echo "${fs[@]}"
for f in "${fs[@]}"
do
	echo File: $f
	gunzip -c $f | grep "Msg]"
done

