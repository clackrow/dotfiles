#!/bin/bash

# Define your background images
MORNING="~/.config/i3/morning.png"
DAY="~/.config/i3/day.png"
AFTERNOON="~/.config/i3/afternoon.png"
NIGHT="~/.config/i3/night.png"

# Get the current hour
HOUR=$(date +'%H')

# Set the background based on the time of day
if [ "$HOUR" -ge 5 ] && [ "$HOUR" -lt 12 ]; then
  feh --bg-scale "/home/rodrigo/.config/i3/morning.png"
elif [ "$HOUR" -ge 12 ] && [ "$HOUR" -lt 18 ]; then
  feh --bg-scale "/home/rodrigo/.config/i3/day.png"
else
  feh --bg-scale "/home/rodrigo/.config/i3/afternoon.png"
fi
