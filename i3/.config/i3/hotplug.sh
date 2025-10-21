#!/usr/bin/env bash

# Exit script on any error
set -e

HDMI_STATUS=$(</sys/class/drm/card1-HDMI-A-1/status)

if [ "connected" == "$HDMI_STATUS" ]; then
    # Set up the monitors

    # HDMI-1: Leftmost screen (4K vertical)
    /usr/bin/xrandr --output HDMI-1 --mode 3840x2160 --rotate left --left-of DP-1

    # DP-1: Middle screen (4K horizontal)
    /usr/bin/xrandr --output DP-1 --mode 3840x2160 --right-of HDMI-1


    # eDP-1: Rightmost screen (Laptop screen)
    /usr/bin/xrandr --output eDP-1 --mode 2880x1800 --primary --right-of DP-1

    # Notify the user
    /usr/bin/notify-send "Graphics Update" "HDMI plugged in"
else
    # Turn off external monitors if HDMI is disconnected
    /usr/bin/xrandr --output HDMI-1 --off
    /usr/bin/xrandr --output DP-1 --off

    # Notify the user
    /usr/bin/notify-send "Graphics Update" "External monitor disconnected"
fi

# Relaunch Polybar
bash ~/.config/polybar/launch.sh 2> /dev/null
