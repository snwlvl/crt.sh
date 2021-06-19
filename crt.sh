#! /bin/bash
#author: ron @snwlvl

curl -s https://crt.sh/?q=$1 > /tmp/curl.out
cat /tmp/curl.out | grep $1 | grep TD | sed -e 's/<//g' | sed -e 's/>//g' | sed -e 's/TD//g' | sed -e 's/\///g' | sed -e 's/ //g' | sed -n '1!p' | httprobe  | sort -u > $1-sublist.txt
cat $1-sublist.txt
