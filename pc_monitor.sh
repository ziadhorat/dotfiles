#!/usr/bin/sh 

RED=`tput setaf 1`
GREEN=`tput setaf 2`
BOLD=`tput bold`
NC=`tput sgr0`

counter=0
seat=1

for (( ; ; ))
do
	if gtimeout 0.2 ping $1s${seat} -c 1 | grep -q "64"
		then echo "$1s${seat} :\t${GREEN}${BOLD}ALIVE${NC}"
		else echo "$1s${seat} :\t${RED}${BOLD}DOWN${NC}"
	fi
	((seat++))
	((counter++))
	sleep 1
done
