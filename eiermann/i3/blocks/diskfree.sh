#!/bin/bash

free=`df -h --output=avail /dev/mapper/ubuntu--vg-ubuntu--lv | tail -1`
echo $free
