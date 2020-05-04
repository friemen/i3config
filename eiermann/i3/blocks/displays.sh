#!/bin/bash

#all_displays=$(xrandr | grep -e "connected" | sed -n 's/\([^\s]\)\s.*/\1/p' | tr '\n' ' ')
connected_displays=$(xrandr | grep -e " connected" | sed -n 's/\([^\s]\)\s.*/\1/p' | tr '\n' ' ')

internal_display_name="eDP1"
internal_display_symbol=
external_display_symbol=


output=""
for display in $connected_displays ; do
    if [[ "$display" == "$internal_display_name" ]] ; then
        output="$output   $internal_display_symbol  $display"
    else
        output="$output   $external_display_symbol  $display"
    fi
done
echo "$output"
