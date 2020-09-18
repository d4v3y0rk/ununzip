#!/bin/bash
COUNT="$(unzip -l $1 | awk '{ print $4}' | wc -l)"
FILECOUNT="$(expr $COUNT - 3)"
FILES=$(unzip -l $1 | awk '{ print $4}' | tail -$FILECOUNT)
echo "$FILES" | xargs rm -r > /dev/null 2>&1
