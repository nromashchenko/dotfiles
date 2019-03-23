#!/bin/bash 

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -x polybar >/dev/null; do sleep 1; done

# Launch 
#MONITOR=HDMI1 polybar -r main &>/dev/null &
#MONITOR=eDP1 polybar -r main &>/dev/null &
MONITOR=eDP-1 polybar -r main &>/dev/null &
#MONITOR=DP1 polybar -r main &>/dev/null &
#MONITOR=DisplayPort-2 polybar -r main &>/dev/null &
