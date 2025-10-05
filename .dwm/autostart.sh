#!/bin/bash
# xrandr --output LVDS-1 --off eDP-1
# xrandr --output HDMI-1 --primary --auto --output LVDS-1 --off
exec slstatus &
nitrogen --restore &
exec compton &
exec setxkbmap us intl &
