#!/usr/bin/sh 

eval "rm names"
eval "ls >> names"

typeset TMP_FILE=$( mktemp )

touch "${TMP_FILE}"
cp -p names "${TMP_FILE}"
sed -e 's/$/ \\/' "${TMP_FILE}" > names
