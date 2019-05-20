#!/usr/bin/sh 

bold=$(tput bold);
blue=$(tput setaf 6);
normal=$(tput sgr0);

OS="`uname`"
case $OS in
  'Linux')
    echo "${blue}${bold}----- Linux -----${normal}";
    read -p 'WTC Username: ' uservar;
    echo "export USER=$uservar" >> ~/.bashrc;
    ;;
  'Darwin')
    echo "${blue}${bold}----- MacOS -----${normal}";
	cp .daily.sh ~/daily.sh
	echo "Daily.sh created"
    echo "DarkMode";
    osascript -e 'tell app "System Events" to tell appearance preferences to set dark mode to true';
    defaults write com.apple.dock static-only -bool true; killall Dock;
	cp .bashrc ~/
	echo "Bashrc"
    ;;
  *) ;;
esac

echo "${blue}${bold}----- Global -----${normal}";
echo "Github"
git clone https://github.com/ziadhorat/WTC-LibFT ~/Work/
cp -R .vim ~/;
echo "Color + 42Header";
cp .vimrc ~/;
echo "Vimrc";
cp .gitignore ~/;
git config --global core.excludesfile ~/.gitignore;
echo "Gitignore";
echo "${blue}${bold}----- Finished -----${normal}";
exit 0
