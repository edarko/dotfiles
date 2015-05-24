#!/bin/sh

xrdb -merge ~/.Xresources

# execute xcompmgr
# xcompmgr -c &

# execute conky
  conky &

# Set keyboard Layout
  setxkbmap -layout gb

while true; do

# Power/Battery Status
        DWM_BATTERY=$(acpi -b | awk 'sub(/,/,"") {print $4}');

# Wi-Fi eSSID
	  DWM_ESSID=$(cat /sys/class/net/wlan0/operstate);

# Volume Level
	  DWM_VOL=$( amixer sget Master | awk -vORS=' ' '/Mono:/ {print($4)}' );

# Date and Time
	  DWM_CLOCK=$( date +'%a %e %b %Y | %k:%M' );

# Overall output command
	  DWM_STATUS="WiFi: [$DWM_ESSID] | Power: [$DWM_BATTERY] | Vol: $DWM_VOL | $DWM_CLOCK";
	  xsetroot -name "$DWM_STATUS";
	  sleep $DWM_RENEW_INT;
	  done &

# Set wallpaper
  feh --bg-scale ~/Pictures/archey.png

# run Xresources
#  [[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources

# Run dwm
exec dwm

# exec xterm -geometry 80x66+0+0 -name login

