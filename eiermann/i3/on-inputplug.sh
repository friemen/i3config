#!/bin/bash

scriptdir="$( cd "$( dirname "$0" )" && pwd )"

echo >&2 "$@"

event=$1
id=$2
type=$3
shift 3
description="$*"

vendorid="bb80" # see info.json of friemen keyboard definitions

#notify-send -t 10000 "$event $type $description"

keyboard_enabled=$(echo "$event $type $description" | grep "XIDeviceEnabled XISlaveKeyboard.*System Control")
keyboard_disabled=$(echo "$event $type" | grep "XIDeviceDisabled XISlaveKeyboard")
handwired=$(lsusb | sed -n 's/.*ID \(.\{4\}:.\{4\}\) .*/\1/p' | grep $vendorid)


if [[ -n "$keyboard_enabled" || -n "$keyboard_disabled" ]]; then
    if [[ -n "$handwired" ]]; then
        $scriptdir/setup-kbd.sh "us(altgr-intl)"
    else
        $scriptdir/setup-kbd.sh "de(nodeadkeys)"
    fi
fi
