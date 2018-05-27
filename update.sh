#!/bin/bash
git rm  --cached -rfq '*/*' # Unstage everything in folders in case a plugin got removed
#readarray -t plugins < <(ls -a *.jar | cut -d "." -f 1 | cut -d "-" -f 1 | cut -d "_" -f 1
readarray -t plugins < plugins.txt # -t removes trailing newlines
for i in "${plugins[@]}"
do
	if [ -d $i -a $i != "DiscordPlugin" ]; then
		find $i -name "config.yml" -exec git add -f '{}' \; # All files are ignored, need to force add
	fi
done
find . -path './Movecraft/types/*.craft' -exec git add -f '{}' \;
git add -f 'dynmap/configuration.txt' 'dynmap/worlds.txt'
git add -f 'MythicMobs/*' ':!:MythicMobs/SavedData/*'

git add -f update.sh download.sh

git commit && git push
