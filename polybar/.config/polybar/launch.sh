#!/usr/bin/env sh

#Terminate current bar instances
killall -q polybar

#Wait until processes shut down
while pgrep -x polybar >/dev/null; do sleep 1; done

#Launch bar
polybar bar &
#polybar workspaces &

echo "Bar launched..."
