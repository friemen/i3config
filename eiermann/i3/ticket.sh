#!/bin/bash

echo "" | \
    dmenu -p "Ticket" -b -sb "#81a1c1" | \
    xargs -r printf "exec 'firefox https://doctronic.atlassian.net/browse/%s'" | \
    xargs -r i3-msg
