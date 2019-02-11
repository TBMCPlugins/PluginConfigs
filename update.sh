#!/bin/bash
git rm  --cached -rfq '*/*' ':!:.github/*'  # Unstage everything in folders in case a plugin got removed
readarray -t plugins < plugins.txt # -t removes trailing newlines
for i in "${plugins[@]}"
do
	if [ -d $i -a $i != "Thorpe-Discord" -a $i != "OpenInv" ]; then
		find $i -name "config.yml" -exec git add -f '{}' \; # All files are ignored, need to force add
	fi
done
find . -path './Movecraft/types/*.craft' -exec git add -f '{}' \;
git add -f 'dynmap/configuration.txt' 'dynmap/worlds.txt'
git add -f 'MythicMobs/*' ':!:MythicMobs/SavedData/*'
git add -f ':(glob)Jobs/*.yml' ':!:Jobs/furnaceBrewingStands.yml'
git add -f 'Towny/settings/townyperms.yml'
git add -f 'PlotSquared/*' ':!:PlotSquared/*storage*' ':!:PlotSquared/translations*'
git add -f 'PermissionsEx/permissions.yml'
git add -f 'Multiverse-Core/worlds.yml'
git add -f 'ServerRunner/config.yml' # Not a plugin
git add -f 'DungeonsXL/dungeons' 'DungeonsXL/scripts'
git add -f ':(glob)TerrainControl/*' 'TerrainControl/worlds/world/*'
git add -f 'Server/*' # Files are hardlinked from one above

git add -f update.sh download.sh

sudo -H git commit -S && git push #sudo -H needed for GPG signing

