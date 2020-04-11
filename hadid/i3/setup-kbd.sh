#!/bin/bash

setxkbmap -layout "de(nodeadkeys)" -option "compose:caps"
xmodmap -pke > /tmp/i3-xmodmap-original
xmodmap $cripts/xmodmaprc
xmodmap -pke > /tmp/i3-xmodmap-current
xset r rate 250 80
