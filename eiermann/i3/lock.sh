#!/bin/bash

# Depends on: convert, i3-lock, compton

# Randomy picks a wallpaper file from ~/Pitcures/Wallpapers
# converts it to the current screen resolution and starts i3-lock
# with it

geometry=`xdpyinfo | grep dimensions | sed -n 's/.*dimensions:\ \+\([0-9]\+\x[0-9]\+\)\ .*/\1/p'`
wallpapers=(~/Pictures/Wallpapers/*)

wallpaper=${wallpapers[RANDOM % ${#wallpapers[@]}]}

echo "Wallpaper file $wallpaper"

lock() {
  i3lock -n -i /tmp/i3-lockscreen.png
  compton -Gf -b --vsync opengl
}

convert $wallpaper -resize $geometry! /tmp/i3-lockscreen.png
lock &
sleep 1
killall compton
