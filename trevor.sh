#!/usr/bin/sh
# Option based dot-file installer

if [ $# -eq 0 ]
then
        echo "Missing options!"
        echo "(run $0 -h for help)"
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
    echo "DarkMode";
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
    echo ".vimrc";
    cp .gitignore ~/;
    git config --global core.excludesfile ~/.gitignore;
    echo ".gitignore";
    exit 0
fi
