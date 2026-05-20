sed -i '4c\folder = ~/Pictures/wallpapers/monokai/' /home/gwallgof/.config/waypaper/config.ini

#Apply waybar

sed -i '2c\@import url("file:///home/gwallgof/.config/colorschemes/monokai/waybar/monokai.css");' /home/gwallgof/.config/waybar/style.css
sed -i '2c\@import url("file:///home/gwallgof/.config/colorschemes/monokai/waybar/monokai.css");' /home/gwallgof/.config/waybar/waybarmodes/floating/style.css
sed -i '2c\@import url("file:///home/gwallgof/.config/colorschemes/monokai/waybar/monokai.css");' /home/gwallgof/.config/waybar/waybarmodes/simple/style.css
sed -i '2c\@import url("file:///home/gwallgof/.config/colorschemes/monokai/waybar/monokai.css");' /home/gwallgof/.config/waybar/waybarmodes/dock/style.css
pkill waybar
waybar &

# Apply rofi

echo '@import "/home/gwallgof/.config/colorschemes/monokai/rofi/config.rasi"' > ~/.config/rofi/config.rasi

# Apply Alacritty

sed -i '2c\general.import = [ "/home/gwallgof/.config/colorschemes/monokai/alacritty/monokai.toml" ]' ~/.config/alacritty/alacritty.toml

#Apply Hypr

sed -i '2c\source = ~/.config/colorschemes/monokai/hypr/colors/monokai.conf' /home/gwallgof/.config/hypr/hyprland.conf

#Apply GTK Theme And Icon Theme

gsettings set org.gnome.desktop.interface gtk-theme "monokai-gtk"
gsettings set org.gnome.desktop.interface icon-theme 'Adwaita'

#Apply Wallpaper

waypaper --wallpaper /home/gwallgof/Pictures/wallpapers/monokai/"01. Monokai.jpg"

exit



