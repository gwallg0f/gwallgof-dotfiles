#! /bin/bash

option=$(printf "Floating\nSimple\nDock" | rofi -dmenu -p "Waybar Mode")

case "$option" in

    "Floating") sh /home/gwallgof/.config/waybar/waybarmodes/floating/switch-bar.sh;;
    "Simple") sh /home/gwallgof/.config/waybar/waybarmodes/simple/switch-bar.sh;; 
    "Dock" ) sh /home/gwallgof/.config/waybar/waybarmodes/dock/switch-bar.sh;;

esac
