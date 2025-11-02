#!/bin/bash

cat <<EOF > ~/.config/i3/sysctl-items.txt
Suspend
Lock
Logout
Reboot
Off
EOF
cmd=`cat ~/.config/i3/sysctl-items.txt | dmenu -i -b -nb \#ebcb8b -sb \#bf616a -nf \#2e3440`
scriptdir="$( cd "$( dirname "$0" )" && pwd )"

case $cmd in
    Off)
	systemctl poweroff
	;;
    Reboot)
	systemctl reboot
	;;
    Suspend)
	$scriptdir/lock.sh
	systemctl suspend
	;;
    Logout)
	i3-msg exit
	;;
    Lock)
        $scriptdir/lock.sh
        ;;
esac
