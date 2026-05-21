sed -i '4c\folder = ~/Pictures/wallpapers/everforest/' /home/gwallgof/.config/waypaper/config.ini

#Apply waybar

sed -i '2c\@import url("file:///home/gwallgof/.config/colorschemes/everforest/waybar/everforest.css");' /home/gwallgof/.config/waybar/style.css
sed -i '2c\@import url("file:///home/gwallgof/.config/colorschemes/everforest/waybar/everforest.css");' /home/gwallgof/.config/waybar/waybarmodes/floating/style.css
sed -i '2c\@import url("file:///home/gwallgof/.config/colorschemes/everforest/waybar/everforest.css");' /home/gwallgof/.config/waybar/waybarmodes/simple/style.css
sed -i '2c\@import url("file:///home/gwallgof/.config/colorschemes/everforest/waybar/everforest.css");' /home/gwallgof/.config/waybar/waybarmodes/dock/style.css
pkill waybar
waybar &

# Apply rofi

echo '@import "/home/gwallgof/.config/colorschemes/everforest/rofi/config.rasi"' > ~/.config/rofi/config.rasi

# Apply Alacritty

sed -i '2c\general.import = [ "/home/gwallgof/.config/colorschemes/everforest/alacritty/everforest.toml" ]' ~/.config/alacritty/alacritty.toml

#Apply GTK Theme And Icon Theme

gsettings set org.gnome.desktop.interface gtk-theme "Everforest-BL-MB-Dark"
gsettings set org.gnome.desktop.interface icon-theme 'Everforest-Dark'

#Apply Wallpaper

waypaper --wallpaper /home/gwallgof/Pictures/wallpapers/everforest/mist_forest_1.png

exit



