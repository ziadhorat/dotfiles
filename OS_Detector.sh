#!/usr/bin/sh 

OS="`uname`"
case $OS in
  'Linux')
    echo "Linux";
    ;;
  'Darwin')
    echo "OSx";
    ;;
  *) ;;
esac

echo "end"
