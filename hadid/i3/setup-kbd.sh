#!/bin/bash

layout="$1"
cripts="$( cd "$( dirname "$0" )" && pwd )"

notify-send -t 2000 "Switching keyboard layout: $layout"

setxkbmap -layout "$layout"  -option -option "compose:paus" -option "caps:capslock"
xmodmap -pke > /tmp/i3-xmodmap-last
xmodmap $cripts/xmodmaprc
xmodmap -pke > /tmp/i3-xmodmap-current
xset r rate 250 80
