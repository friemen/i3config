#!/bin/sh

idle=`mpstat -P all 1 1 | tail -n 1 | sed -n 's/.*\s\([0-9,.]\+\)$/\1/p'`
# the output of mpstat depends on LC_MEASUREMENT
# use commands locale and update-locale to set these to german defaults
idle=`echo $idle | sed -n 's/,/./p'`
usage=`echo "scale=2;100.00-$idle" | bc`
echo "$usage%"
