#! /bin/bash

option=$(printf "Catppuccin\nNordic\nRosé Pine\nEverforest\nTokyo Night\nTokyo Night Alt\nKanagawa\nGruvbox\nMonokai\nOsaka\nMonochrome\nGotham\nPywal" | rofi -dmenu -p "Choose Theme")

case "$option" in

    "Catppuccin") export theme="catppuccin" && sh /home/gwallgof/.config/colorschemes/switch-theme.sh;;
    "Nordic")  export theme="nordic" && sh /home/gwallgof/.config/colorschemes/switch-theme.sh;; 
    "Rosé Pine")  export theme="rosepine" && sh /home/gwallgof/.config/colorschemes/switch-theme.sh;;
    "Everforest")  export theme="everforest" && sh /home/gwallgof/.config/colorschemes/switch-theme.sh;;
    "Tokyo Night")  export theme="tokyonightnormal" && sh /home/gwallgof/.config/colorschemes/switch-theme.sh;;
    "Tokyo Night Alt")  export theme="tokyonight" && sh /home/gwallgof/.config/colorschemes/switch-theme.sh;;
    "Kanagawa") export theme="kanagawa" && sh /home/gwallgof/.config/colorschemes/switch-theme.sh;;
    "Gruvbox") export theme="gruvbox" && sh /home/gwallgof/.config/colorschemes/switch-theme.sh;;
    "Monokai") export theme="monokai" && sh /home/gwallgof/.config/colorschemes/switch-theme.sh;;
    "Osaka")  export theme="solarized" && sh /home/gwallgof/.config/colorschemes/switch-theme.sh;;
    "Monochrome")  export theme="monochrome" && sh /home/gwallgof/.config/colorschemes/switch-theme.sh;;
    "Gotham")  export theme="gotham" && sh /home/gwallgof/.config/colorschemes/switch-theme.sh;;

esac
