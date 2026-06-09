#!/bin/bash

BAT="/sys/class/power_supply/BAT0"

NOW=$(cat $BAT/charge_now)
FULL=$(cat $BAT/charge_full)
STATUS=$(cat $BAT/status)

PERCENT=$(( NOW * 100 / FULL )) 


ICON="󱊣"

if [[ "$STATUS" == "Charging" ]]; then
    ICON="󰂄"
elif [[ "$STATUS" == "Full" ]]; then
    ICON="󰁹"
fi

echo "$ICON  $PERCENT%"
