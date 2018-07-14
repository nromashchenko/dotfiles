#!/usr/bin/env bash

# Get out of town if something errors
set -e

HDMI_STATUS=$(</sys/class/drm/card0/card0-HDMI-A-1/status )  

if [ "connected" == "$HDMI_STATUS" ]; then  
    /usr/bin/xrandr --output HDMI1 --left-of eDP1 --auto
    /usr/bin/notify-send --urgency=low -t 5000 "Graphics Update" "HDMI plugged in"
else  
    /usr/bin/xrandr --output HDMI1 --off
    /usr/bin/notify-send --urgency=low -t 5000 "Graphics Update" "External monitor disconnected"    
    exit
fi


bash .config/polybar/launch_polybar.sh
