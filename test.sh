#!/usr/bin/sh

blue=$(tput setaf 4);
bold=$(tput bold);
normal=$(tput sgr0);
echo "${bold}hello ${blue}blue world${normal}" ;
