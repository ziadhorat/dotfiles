#!/usr/bin/sh 
#brew install coreutils

RED=`tput setaf 1`
GREEN=`tput setaf 2`
BOLD=`tput bold`
NC=`tput sgr0`

counter=0

for (( ; ; ))
do
	if gtimeout 0.2 ping $1 -c 1 | grep -q "64"
		then echo "${counter} :\t${GREEN}${BOLD}ALIVE${NC}"
		else echo "${counter} :\t${RED}${BOLD}DOWN${NC}"
	fi
	((counter++))
	sleep 1
done
