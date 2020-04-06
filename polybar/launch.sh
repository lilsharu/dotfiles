#!/usr/bin/env sh

#Terminate already running bar instances
killall -q polybar
 
#Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

desktop = $(echo DESKTOP_SESSION)

case $desktop in 
  bspwm)
    if type = "xrandr" > /dev/null; then
      for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
        MONITOR=$m polybar --reload mainbar-bspwm -C ~/.config/polybar/config &
      done
    else
      polybar --reload mainbar-bspwm -C ~/.config/polybar/config &
    fi
    ;;
esac
