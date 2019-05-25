#!/bin/bash

#end all running bar instances
killall -q polybar

#wait until they've been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

#launch polybar
polybar example &

echo "polybar launched..."
