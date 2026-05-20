sed -i '4c\folder = ~/Pictures/wallpapers/nordic/' /home/gwallgof/.config/waypaper/config.ini

#Apply waybar

sed -i '2c\@import url("file:///home/gwallgof/.config/colorschemes/nordic/waybar/nordic.css");' /home/gwallgof/.config/waybar/style.css
sed -i '2c\@import url("file:///home/gwallgof/.config/colorschemes/nordic/waybar/nordic.css");' /home/gwallgof/.config/waybar/waybarmodes/floating/style.css
sed -i '2c\@import url("file:///home/gwallgof/.config/colorschemes/nordic/waybar/nordic.css");' /home/gwallgof/.config/waybar/waybarmodes/simple/style.css
sed -i '2c\@import url("file:///home/gwallgof/.config/colorschemes/nordic/waybar/nordic.css");' /home/gwallgof/.config/waybar/waybarmodes/dock/style.css
pkill waybar
waybar &

# Apply rofi

echo '@import "/home/gwallgof/.config/colorschemes/nordic/rofi/config.rasi"' > ~/.config/rofi/config.rasi

# Apply Alacritty

sed -i '2c\general.import = [ "/home/gwallgof/.config/colorschemes/nordic/alacritty/nordic.toml" ]' ~/.config/alacritty/alacritty.toml

#Apply GTK Theme And Icon Theme

gsettings set org.gnome.desktop.interface gtk-theme "Nordic-darker-v40"
gsettings set org.gnome.desktop.interface icon-theme 'Nordzy-dark'

#Apply Wallpaper

waypaper --wallpaper /home/gwallgof/Pictures/wallpapers/nordic/ign_mountains.png

exit



