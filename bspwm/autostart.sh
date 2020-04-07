#!/bin/bash

function run {
  if ! pgrep $1 ;
  then
    $@&
  fi
}

xrandr --output HDMI-1 --off --output eDP-1 --primary --mode 1920x1080 --pos 0x0 --rotate normal

$HOME/.config/polybar/launch.sh &

#For Background
feh --bg-scale /home/mastermind/Pictures/Wallpapers/main.jpg &
run sxhkd -c ~/.config/bspwm/sxhkd/sxhkdrc &
#Trial:
conky -c $HOME/.config/bspwm/system-overview &
run variety &
run nm-applet &
picom --config $HOME/.config/polybar/picom.conf &

#nitrogen --restore &
#run caffeine &
#run vivaldi-stable &
#run firefox &
#run thunar &
#run dropbox &
#run insync start &
#run discord &
#run spotify &
#run atom &

