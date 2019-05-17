#!/usr/bin/sh 

OS="`uname`"
case $OS in
  'Linux')
    echo "----- Linux Specific -----";
    ;;
  'Darwin')
    echo "----- MacOS Specific -----";
    ;;
  *) ;;
esac

echo "----- Done -----";
