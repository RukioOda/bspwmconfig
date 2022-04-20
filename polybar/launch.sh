#!/bin/bash
killall -q polybar
#For wait until process is down
while grep -u $UID -x polybar >/dev/null; do sleep 1;done
# Launch bar1 and bar2
polybar mybar 2>&1 | tee -a /tmp/polybar.log & disown
echo "Polybar launched..."
