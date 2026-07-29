#!/usr/bin/env bash

options=" Lock\n Logout\n Suspend\n Reboot\n Shutdown"

selected=$(printf "$options" | wofi --dmenu --prompt "Power" --width 200 --height 200)

case "$selected" in
    *Lock)     loginctl lock-session ;;
    *Logout)   loginctl terminate-user "$USER" ;;
    *Suspend)  systemctl suspend ;;
    *Reboot)   systemctl reboot ;;
    *Shutdown) systemctl poweroff ;;
esac
