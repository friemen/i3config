#!/bin/bash

de="de(nodeadkeys)"
gb="gb"
us="us(altgr-intl)"

current_layout=`setxkbmap -query | grep layout | sed -n 's/layout:\s*\(.*\)/\1/p'`
next_layout="$de"

if [[ "$current_layout" == "$de" ]]; then
    next_layout="$gb"
fi

if [[ "$current_layout" == "$gb" ]]; then
    next_layout="$us"
fi

if [[ "$current_layout" == "$us" ]]; then
    next_layout="$de"
fi
notify-send -t 2000 "Switching keyboard layout: $next_layout"

cripts="$( cd "$( dirname "$0" )" && pwd )"
$cripts/setup-kbd.sh "$next_layout"
