#!/bin/bash
if [ "$#" -ne 2 ]; then
	echo "Usage: $0 WORD WEBSITE"
	exit NUM
fi
word="$1"
website="$2"
count=$(wget --quiet -O - "$website" | grep -o -i "$word" | wc -l)
echo "$word: $count"

