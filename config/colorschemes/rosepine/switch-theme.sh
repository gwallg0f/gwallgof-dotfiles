sed -i '4c\folder = ~/Pictures/wallpapers/rosepine/' /home/gwallgof/.config/waypaper/config.ini

#Apply waybar


sed -i '2c\@import url("file:///home/gwallgof/.config/colorschemes/rosepine/waybar/rosepine.css");' /home/gwallgof/.config/waybar/style.css
sed -i '2c\@import url("file:///home/gwallgof/.config/colorschemes/rosepine/waybar/rosepine.css");' /home/gwallgof/.config/waybar/waybarmodes/floating/style.css
sed -i '2c\@import url("file:///home/gwallgof/.config/colorschemes/rosepine/waybar/rosepine.css");' /home/gwallgof/.config/waybar/waybarmodes/simple/style.css
sed -i '2c\@import url("file:///home/gwallgof/.config/colorschemes/rosepine/waybar/rosepine.css");' /home/gwallgof/.config/waybar/waybarmodes/dock/style.css
pkill waybar
waybar &

# Apply rofi

echo '@import "/home/gwallgof/.config/colorschemes/rosepine/rofi/config.rasi"' > ~/.config/rofi/config.rasi

# Apply Alacritty

sed -i '2c\general.import = [ "/home/gwallgof/.config/colorschemes/rosepine/alacritty/rosepine.toml" ]' ~/.config/alacritty/alacritty.toml

#Apply Hypr

sed -i '2c\source = ~/.config/colorschemes/rosepine/hypr/colors/rosepine.conf' /home/gwallgof/.config/hypr/hyprland.conf

#Apply GTK Theme And Icon Theme

gsettings set org.gnome.desktop.interface gtk-theme "Rosepine-BL-MB-Dark"
gsettings set org.gnome.desktop.interface icon-theme 'rose-pine-icons'

#Apply Wallpaper

waypaper --wallpaper /home/gwallgof/Pictures/wallpapers/rosepine/grue-main.png

exit



