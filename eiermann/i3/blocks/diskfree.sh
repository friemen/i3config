#!/bin/bash

free=`df -h --output=avail /dev/mapper/vgubuntu-root | tail -1`
echo $free
