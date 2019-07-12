#!/bin/bash
echo "$1"
#if [[ -n "$1" ]]; then
#	echo "Specify what to search for."
#	exit
#fi

shopt -s nullglob
fs=(*.gz)
#echo "${fs[@]}"
for f in "${fs[@]}"
do
	echo File: $f
	gunzip -c $f | grep "$1"
done

