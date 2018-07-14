#!/bin/bash 

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -x polybar >/dev/null; do sleep 1; done

# Launch 
MONITOR=LVDS1 polybar -r main &>/dev/null &
MONITOR=VGA1 polybar -r main &>/dev/null &
