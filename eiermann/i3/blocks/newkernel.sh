#!/bin/bash

installed_kernels=$(for f in $(ls /boot); do echo $f | sed -n -E 's/vmlinuz-(.*)/\1/p'; done)
number_of_installed_kernels=$(echo "$installed_kernels" | wc -l)
latest_available_kernel=$(echo "$installed_kernels" | tail -n 1)

active_kernel=$(uname -r)

# echo "Installed:"
# echo "$installed_kernels"
# echo "Active: $active_kernel"
# echo "Latest: $latest_available_kernel"

if [ "$active_kernel" != "$latest_available_kernel" ]; then
    echo " $active_kernel < $latest_available_kernel"
fi
