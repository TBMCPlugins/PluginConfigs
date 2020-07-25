#!/bin/sh
while true; do
	echo "-- Starting server (paper.jar)"
	java -XX:+UseG1GC -XX:+UnlockExperimentalVMOptions -XX:MaxGCPauseMillis=100 -XX:+DisableExplicitGC -XX:TargetSurvivorRatio=90 -XX:G1NewSizePercent=50 -XX:G1MaxNewSizePercent=80 -XX:InitiatingHeapOccupancyPercent=10 -XX:G1MixedGCLiveThresholdPercent=50 -XX:+AggressiveOpts -XX:+AlwaysPreTouch -XX:+ParallelRefProcEnabled -Dusing.aikars.flags=mcflags.emc.gs -Xms2G -Xmx5G -jar paper.jar
	if [ -f "/tmp/RestartMCServerv5" ]; then
		rm /tmp/RestartMCServerv5
		echo -- Restarting server
	else
		echo -- Stopping server
		break
	fi
done

