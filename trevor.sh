#!/usr/bin/sh
#
# Examlple of using options in scripts
#

if [ $# -eq 0 ]
then
        echo "Missing options!"
        echo "(run $0 -h for help)"
        echo ""
        exit 0
fi

ECHO="false"
GLOB="false"

while getopts "hmu" OPTION; do
        case $OPTION in

                m)
                        ECHO="true1"
                        ;;

                u)
						ECHO="true2"
						;;

                h)
                        echo "Usage:"
                        echo "$0 -m "
                        echo "$0 -u "
                        echo ""
                        echo "   -m     For OSx devices (iMacs/MacBooks)"
                        echo "   -u     For Ubuntu"
                        exit 0
                        ;;

        esac
done

if [ $ECHO = "true1" ]
then
    echo "-----Mac specific-----";
    osascript -e 'tell app "System Events" to tell appearance preferences to set dark mode to true';
    echo "DarkMode enabled";
    GLOB="true";
fi

if [ $ECHO = "true2" ]
then
	echo "-----Ubuntu specific-----";
	GLOB="true";
fi

if [ $GLOB = "true" ]
then
	echo "-----Global settings-----";
	cp -R .vim ~/;
	cp .vimrc ~/;
	echo "Vimrc Done";
	cp .gitignore ~/;
	git config --global core.excludesfile ~/.gitignore;
	echo "GitIgnore Done";
fi
