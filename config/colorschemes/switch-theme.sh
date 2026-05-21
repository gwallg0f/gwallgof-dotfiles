
echo Switching to theme $theme

sed -i '4c\folder = ~/Pictures/wallpapers/'"$theme"'/' /home/gwallgof/.config/waypaper/config.ini

#Apply waybar

sed -i '2c@import url("file:///home/gwallgof/.config/colorschemes/'"$theme"'/waybar/'"$theme"'.css");' /home/gwallgof/.config/waybar/style.css
sed -i '2c@import url("file:///home/gwallgof/.config/colorschemes/'"$theme"'/waybar/'"$theme"'.css");' /home/gwallgof/.config/waybar/waybarmodes/floating/style.css
sed -i '2c@import url("file:///home/gwallgof/.config/colorschemes/'"$theme"'/waybar/'"$theme"'.css");' /home/gwallgof/.config/waybar/waybarmodes/simple/style.css
sed -i '2c@import url("file:///home/gwallgof/.config/colorschemes/'"$theme"'/waybar/'"$theme"'.css");' /home/gwallgof/.config/waybar/waybarmode/dock/style.css
pkill waybar
waybar &

# Apply rofi

rm ~/.config/rofi/config.rasi
cp ~/.config/colorschemes/$theme/rofi/config.rasi ~/.config/rofi/config.rasi

# Apply Alacritty

rm ~/.config/alacritty/theme.toml
cp ~/.config/colorschemes/$theme/alacritty/theme.toml ~/.config/alacritty/theme.toml

#Apply GTK Theme And Icon Theme

gsettings set org.gnome.desktop.interface gtk-theme "Catppuccin-BL-MB-Dark"
gsettings set org.gnome.desktop.interface icon-theme 'Catppuccin-SE'

#Apply Wallpaper

waypaper --wallpaper /home/$USER/Pictures/wallpapers/$theme/wallpaper.*

exit
