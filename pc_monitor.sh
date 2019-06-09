#!/usr/bin/sh
#Dependency: run "brew install coreutils"
#run "sh pc_monitor c4r10"

counter=0
seat=1

while [ ${counter} -le 10 ]
do
	if gtimeout 0.01 ping $1s${seat} -c 1 | grep -q "64"
		then printf "⭕"
		else printf "❌"
	fi
	((seat++))
	((counter++))
	sleep 1
done
printf "\n"
