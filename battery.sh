#!/bin/bash

if [ -d /sys/class/power_supply/BAT0 ];
then
    now=`cat /sys/class/power_supply/BAT0/charge_now`
    full=`cat /sys/class/power_supply/BAT0/charge_full`
    out=`echo $now/$full*100 | bc -l | cut -c 1-5`
    printf "%.f%% | " $out
else
    echo ""
fi
