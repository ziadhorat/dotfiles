#!/usr/bin/sh 

read -p "File extension(c/h/sh/exe): ."  extension

eval "ls *.$extension >> afijkkjfhkjlbhfkegahsbgvh"

typeset TMP_FILE=$( mktemp )

echo "--------------------------"
touch "${TMP_FILE}"
cp -p  afijkkjfhkjlbhfkegahsbgvh "${TMP_FILE}"
sed -e 's/$/ \\/' "${TMP_FILE}" > afijkkjfhkjlbhfkegahsbgvh
sed '$s/..$//' afijkkjfhkjlbhfkegahsbgvh 
eval "rm  afijkkjfhkjlbhfkegahsbgvh"
echo "--------------------------"

echo "Output above"



