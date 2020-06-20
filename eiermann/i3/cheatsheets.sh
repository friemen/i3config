#!/bin/bash

dir=~/Pictures/Cheatsheets
sheet=`ls $dir | dmenu -i -b -sb '#005000'`
if [[ -n $sheet ]]; then
    echo $sheet
    eog --class "cheatsheet" "$dir/$sheet"
fi
