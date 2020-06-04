#!/bin/bash

cmd=`cat ~/.config/i3/syscommand-items.txt | dmenu -i -b -nb \#FFD000 -nf \#000000`
cripts="$( cd "$( dirname "$0" )" && pwd )"

case $cmd in
    Off)
	systemctl poweroff
	;;
    Reboot)
	systemctl reboot
	;;
    Suspend)
	$cripts/lock.sh
	systemctl suspend
	;;
    Logout)
	i3-msg exit
	;;
esac
