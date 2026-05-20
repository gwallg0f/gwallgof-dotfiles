sed -i '4c\folder = ~/Pictures/wallpapers/solarized/' /home/gwallgof/.config/waypaper/config.ini

#Apply waybar

sed -i '2c\@import url("file:///home/gwallgof/.config/colorschemes/solarized/waybar/solarized.css");' /home/gwallgof/.config/waybar/style.css
sed -i '2c\@import url("file:///home/gwallgof/.config/colorschemes/solarized/waybar/solarized.css");' /home/gwallgof/.config/waybar/waybarmodes/floating/style.css
sed -i '2c\@import url("file:///home/gwallgof/.config/colorschemes/solarized/waybar/solarized.css");' /home/gwallgof/.config/waybar/waybarmodes/simple/style.css
sed -i '2c\@import url("file:///home/gwallgof/.config/colorschemes/solarized/waybar/solarized.css");' /home/gwallgof/.config/waybar/waybarmodes/dock/style.css
pkill waybar
waybar &

# Apply rofi

echo '@import "/home/gwallgof/.config/colorschemes/solarized/rofi/config.rasi"' > ~/.config/rofi/config.rasi

# Apply Alacritty

sed -i '2c\general.import = [ "/home/gwallgof/.config/colorschemes/solarized/alacritty/solarized.toml" ]' ~/.config/alacritty/alacritty.toml

#Apply Hypr

sed -i '2c\source = ~/.config/colorschemes/solarized/hypr/colors/solarized.conf' /home/gwallgof/.config/hypr/hyprland.conf

#Apply GTK Theme And Icon Theme

gsettings set org.gnome.desktop.interface gtk-theme "Osaka-BL-MB-Dark"
gsettings set org.gnome.desktop.interface icon-theme 'Solarized-Dark-Cyan-Numix'

#Apply Wallpaper

waypaper --wallpaper /home/gwallgof/Pictures/wallpapers/solarized/wp4657401-solarized-wallpapers.jpg 

exit



