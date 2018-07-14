#!/usr/bin/env bash

# Get out of town if something errors
set -e

HDMI_STATUS=$(</sys/class/drm/card0/card0-HDMI-A-1/status )  
VGA_STATUS=$(</sys/class/drm/card0/card0-VGA-1/status )

if [ "connected" == "$HDMI_STATUS" ]; then  
    /usr/bin/xrandr --output HDMI1 --left-of LVDS1 --auto
    /usr/bin/xrandr --output VGA1 --off
    /usr/bin/notify-send --urgency=low -t 5000 "Graphics Update" "HDMI plugged in"
elif [ "connected" == "$VGA_STATUS" ]; then  
    #/usr/bin/xrandr --output HDMI1 --off
    /usr/bin/xrandr --output VGA1 --left-of LVDS1 --auto
    /usr/bin/notify-send --urgency=low -t 5000 "Graphics Update" "VGA plugged in"
else  
    #/usr/bin/xrandr --output HDMI1 --off
    /usr/bin/xrandr --output VGA1 --off
    /usr/bin/notify-send --urgency=low -t 5000 "Graphics Update" "External monitor disconnected"    
    exit
fi


bash .config/polybar/launch_polybar.sh
