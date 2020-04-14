#!/bin/bash

layout="$1"
cripts="$( cd "$( dirname "$0" )" && pwd )"

setxkbmap -layout "$layout" -option "compose:caps"
xmodmap -pke > /tmp/i3-xmodmap-last
xmodmap $cripts/xmodmaprc
xmodmap -pke > /tmp/i3-xmodmap-current
xset r rate 250 80
