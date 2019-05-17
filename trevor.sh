#!/usr/bin/sh 

OS="`uname`"
case $OS in
  'Linux')
    echo "----- Linux -----";
    ;;
  'Darwin')
    echo "----- MacOS -----";
    osascript -e 'tell app "System Events" to tell appearance preferences to set dark mode to true';
    echo "DarkMode";
    ;;
  *) ;;
esac

echo "----- Global -----";
cp -R .vim ~/;
cp .vimrc ~/;
echo ".vimrc";
cp .gitignore ~/;
git config --global core.excludesfile ~/.gitignore;
echo ".gitignore";

echo "----- Finished -----";
exit 0
