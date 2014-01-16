#!/bin/sh
cat root.html | awk '
/<!--%%.*%%-->/ { system("cat " $2 ".html") 1>/dev/null }
!/<!--%%.*%%-->/ { print }
'
