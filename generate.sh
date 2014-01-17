#!/bin/sh
cat $1.html | awk '
/<!--%%.*%%-->/ { system("./generate.sh " $2) 1>/dev/null }
!/<!--%%.*%%-->/ { print }
'
