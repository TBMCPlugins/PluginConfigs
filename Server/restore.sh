#!/bin/bash
# Only read the error stream from the plugin
echo Make sure to only give the integer part of the coordinates!
echo Also, second coordinate must be larger than the first
: ${5?"I need more!
Usage: $0 <path-to-backup> <coordX1> <coordZ1> <coordX2> <coordZ2>"}
X1=$(($2/256))
Z1=$(($3/256))
X2=$(($4/256))
Z2=$(($5/256))
for X in $(seq $X1 $X2); do
	for Z in $(seq $Z1 $Z2); do
		echo "Unzipping region ($X,$Z)..." >&2
		#unzip "$1" "world/region/r.$X.$Z.mca" -d backupextract
		unzip -j -u "$1" "world/region/r.$X.$Z.mca" -d backupextract # BACKUP_world/region # -j: Don't retain folder structure
	done
done
echo "Backup restoration finished!" >&2

