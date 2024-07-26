#!/usr/bin/env bash

# Get out of town if something errors
set -e

HDMI_STATUS=$(</sys/class/drm/card1-HDMI-A-1/status )  

if [ "connected" == "$HDMI_STATUS" ]; then  
    /usr/bin/xrandr --output HDMI-1-1 --left-of eDP --mode 2560x1440
    /usr/bin/notify-send --urgency=low -t 5000 "Graphics Update" "HDMI plugged in"
else  
    /usr/bin/xrandr --output HDMI-1-1 --off
    /usr/bin/notify-send --urgency=low -t 5000 "Graphics Update" "External monitor disconnected"    
    exit
fi


bash .config/polybar/launch
