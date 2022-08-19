#!/bin/bash

command=$1
mpv_running=$(ps h -C mpv)
if [ -z "$mpv_running" ]; then
    echo "using mpc commands"
    mpd_host=gray
    case "$command" in
        play | pause)
            mpc --host=$mpd_host toggle
            ;;
        stop)
            mpc --host=$mpd_host stop
            ;;
        prev)
            mpc --host=$mpd_host prev
            ;;
        next)
            mpc --host=$mpd_host next
            ;;
        *)
            echo "Unknown command"
            ;;
    esac
else
    echo "using mpv commands"
    socket_file="$HOME/.config/mpv/socket"

    case "$command" in
        play | pause | stop)
            echo cycle pause   | socat - "$socket_file"
            ;;
        prev)
            echo playlist_prev | socat - "$socket_file"
            ;;
        next)
            echo playlist_next | socat - "$socket_file"
            ;;
        *)
            echo "Unknown command"
            ;;
    esac
fi

# use it in your i3 config like so
# bindsym XF86AudioPlay  exec $cripts/playctl.sh play
# bindsym XF86AudioPause exec $cripts/playctl.sh pause
# bindsym XF86AudioStop  exec $cripts/playctl.sh stop
# bindsym XF86AudioPrev  exec $cripts/playctl.sh prev
# bindsym XF86AudioNext  exec $cripts/playctl.sh next