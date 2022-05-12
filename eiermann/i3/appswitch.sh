#!/bin/bash


focus_or_start_browser() {
    local title=$1
    local url=$2
    shift 2
    i3-msg -t get_tree | grep -ie ".*$title.* - Mozilla Firefox" >/dev/null
    if [[ $? -ne 0 ]] ; then
	echo Starting Firefox $url
	firefox -new-window $url $* &
	sleep 2
    fi
    echo Focusing $title
    i3-msg [class="Firefox" title="$title"] focus
}


focus_or_start() {
    local class=$1
    shift
    i3-msg -t get_tree | grep $class >/dev/null
    if [[ $? -ne 0 ]] ; then
	echo Starting $*
	$* &
	sleep 2
    fi
    echo Focusing $class
    i3-msg [class="$class"] focus
    #i3-msg [class="$class"] move window to workspace current
}


app=`cat ~/.config/i3/appswitch-items.txt | dmenu -i -b -sb '#bf616a'`

case $app in
    Calculator)
        gnome-calculator &
        ;;
    Calendar)
	focus_or_start Gnome-calendar gnome-calendar
        ;;
    Cantata)
	focus_or_start Cantata cantata
        ;;
    Clementine)
	focus_or_start Clementine clementine
	;;
    Cloud)
	focus_or_start_browser "Nextcloud" https://cloud.doctronic.de/index.php/login?redirect_url=/index.php/apps/files/
	;;
    Confluence)
	focus_or_start_browser "Confluence" https://confluence.doctronic.de
	;;
    Displays...)
	~/.config/i3/displayswitch.sh &
        ;;
    DTMS)
	focus_or_start_browser "dtms" https://dtms.doctronic.de/ui#timelogging
	;;
    Emacs)
	XMODIFIERS=@im=none focus_or_start Emacs emacs
	;;
    Firefox)
	focus_or_start_browser "Firefox" https://www.google.de
	;;
    Gerrit)
	focus_or_start_browser "gerrit" http://gerrit.doctronic.de/login/%23%2Fq%2Fstatus%3Aopen
	;;
    Gitlist)
	focus_or_start_browser "GitList" http://lambda.gitlist.doctronic.de/
	;;
    Jenkins)
	focus_or_start_browser "Jenkins" http://jenkins2.doctronic.de
	;;
    JIRA)
	focus_or_start_browser "JIRA" https://jira.doctronic.de/
	;;
    Keepass)
	~/bin/dt-keepass.sh &
	;;
    Krusader)
	focus_or_start krusader krusader
	;;
    Mixxx)
	focus_or_start Mixxx ~/bin/music-dj.sh
	;;
    Nexus)
	focus_or_start_browser "Nexus" http://nexus.doctronic.de:8080/nexus
	;;
    Search)
        i3-msg workspace "3: "
	firefox &
	;;
    Skype)
	focus_or_start Skype skypeforlinux
	;;
    Slack)
	focus_or_start Slack slack
	;;
    System...)
	~/.config/i3/syscommand.sh &
	;;
    Terminal)
	i3-msg workspace "1: "
	;;
    Ticket...)
	i3-input -P "JIRA Nr: " -F "exec firefox -new-window https://jira.doctronic.de/browse/%s"
	;;
    Thunderbird)
	focus_or_start Thunderbird thunderbird
	;;
    Whereby)
	focus_or_start_browser "whereby.com" https://doctronic.whereby.com
	;;
    WindowsVM)
	VBoxManage startvm doctronic &
	i3-msg workspace "10: "
	;;
esac
