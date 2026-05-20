sed -i '4c\folder = ~/Pictures/wallpapers/gruvbox/' /home/gwallgof/.config/waypaper/config.ini

#Apply waybar

sed -i '2c\@import url("file:///home/gwallgof/.config/colorschemes/gruvbox/waybar/gruvbox.css");' /home/gwallgof/.config/waybar/style.css
sed -i '2c\@import url("file:///home/gwallgof/.config/colorschemes/gruvbox/waybar/gruvbox.css");' /home/gwallgof/.config/waybar/waybarmodes/floating/style.css
sed -i '2c\@import url("file:///home/gwallgof/.config/colorschemes/gruvbox/waybar/gruvbox.css");' /home/gwallgof/.config/waybar/waybarmodes/simple/style.css
sed -i '2c\@import url("file:///home/gwallgof/.config/colorschemes/gruvbox/waybar/gruvbox.css");' /home/gwallgof/.config/waybar/waybarmodes/dock/style.css
pkill waybar
waybar &

# Apply rofi

echo '@import "/home/gwallgof/.config/colorschemes/gruvbox/rofi/config.rasi"' > ~/.config/rofi/config.rasi

# Apply Alacritty

sed -i '2c\general.import = [ "/home/gwallgof/.config/colorschemes/gruvbox/alacritty/gruvbox.toml" ]' ~/.config/alacritty/alacritty.toml

#Apply GTK Theme And Icon Theme

gsettings set org.gnome.desktop.interface gtk-theme "Gruvbox-BL-MB-Dark"
gsettings set org.gnome.desktop.interface icon-theme 'Gruvbox-Plus-Dark'

#Apply Wallpaper

waypaper --wallpaper /home/gwallgof/Pictures/wallpapers/gruvbox/wallhaven-2e2xyx.jpg

exit



