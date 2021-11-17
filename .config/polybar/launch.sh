#!/bin/bash

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch Polybar, using default config location ~/.config/polybar/config
#polybar bar-bspwm &
polybar -rq top &

my_laptop_external_monitor=$(xrandr --query | grep 'DP3')
if [[ $my_laptop_external_monitor = *connected* ]]; then
    polybar -rq top_external &
fi
