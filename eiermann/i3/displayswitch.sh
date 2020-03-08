#!/bin/bash

wallpaper() {
    sleep 1
    feh --bg-fill ~/Pictures/Wallpapers/i3.jpg
}


internal=eDP1
dp1=DP1-1
dp2=HDMI1

mode=$1


menu() {
    local itemfile=~/.config/i3/displayswitch-items.txt
    echo "1-Internal only" >$itemfile
    echo "2-Both" >>$itemfile
    echo "3-External only" >>$itemfile
    echo "4-Projection left" >>$itemfile
    echo "5-Projection right" >>$itemfile
    mode=`cat $itemfile | dmenu -i -b | head -c 1`
}


if [ -z "$mode" ]; then
    menu
fi

case $mode in
  1)
    echo "Internal on"
    xrandr --output $internal --auto --primary
    sleep 1
    echo "$dp1 off"
    xrandr --output $dp1 --off
    sleep 1
    echo "$dp2 off"
    xrandr --output $dp2 --off
    wallpaper
    ;;
  2)
    sleep 1
    echo "Internal off"
    xrandr --output $internal --off
    sleep 1
    echo "$dp1 on"
    xrandr --output $dp1 --auto --primary
    sleep 1
    echo "Internal on"
    xrandr --output $internal --auto --left-of $dp1
    wallpaper
    ;;
  3)
    echo "$dp1 on"
    xrandr --output $dp1 --auto --primary
    sleep 1
    echo "Internal off"
    xrandr --output $internal --off
    wallpaper
    ;;
  4)
    echo "Internal off"
    xrandr --output $internal --off
    sleep 1
    echo "$dp2 on"
    xrandr --output $dp2 --auto
    sleep 1
    echo "Internal on"
    xrandr --output $internal --auto
    sleep 1
    xrandr --output $internal --primary --right-of $dp2
    wallpaper
    ;;
  5)
    echo "Internal off"
    xrandr --output $internal --off
    sleep 1
    echo "$dp2 on"
    xrandr --output $dp2 --auto
    sleep 1
    echo "Internal on"
    xrandr --output $internal --auto
    sleep 1
    xrandr --output $internal --primary --left-of $dp2
    wallpaper
    ;;
esac

# Fix keyboard speed
xset r rate 250 80
