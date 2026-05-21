#! /bin/bash

option=$(printf "Catppuccin\nNordic\nRosé Pine\nEverforest\nTokyo Night\nTokyo Night Alt\nKanagawa\nGruvbox\nMonokai\nOsaka\nMonochrome\nGotham\nPywal" | rofi -dmenu -p "Choose Theme")

case "$option" in

    "Catppuccin") sh /home/gwallgof/.config/colorschemes/catppuccin/switch-theme.sh;;
    "Nordic") sh /home/gwallgof/.config/colorschemes/nordic/switch-theme.sh;; 
    "Rosé Pine") sh /home/gwallgof/.config/colorschemes/rosepine/switch-theme.sh;;
    "Everforest") sh /home/gwallgof/.config/colorschemes/everforest/switch-theme.sh;;
    "Tokyo Night") sh /home/gwallgof/.config/colorschemes/tokyonightnormal/switch-theme.sh;;
    "Tokyo Night Alt") sh /home/gwallgof/.config/colorschemes/tokyonight/switch-theme.sh;;
    "Kanagawa") sh /home/gwallgof/.config/colorschemes/kanagawa/switch-theme.sh;;
    "Gruvbox") sh /home/gwallgof/.config/colorschemes/gruvbox/switch-theme.sh;;
    "Monokai") sh /home/gwallgof/.config/colorschemes/monokai/switch-theme.sh;;
    "Osaka") sh /home/gwallgof/.config/colorschemes/solarized/switch-theme.sh;;
    "Monochrome") sh /home/gwallgof/.config/colorschemes/monochrome/switch-theme.sh;;
    "Gotham") sh /home/gwallgof/.config/colorschemes/gotham/switch-theme.sh;;

esac
