sed -i '4c\folder = ~/Pictures/wallpapers/monochrome/' /home/gwallgof/.config/waypaper/config.ini

#Apply waybar

sed -i '2c\@import url("file:///home/gwallgof/.config/colorschemes/monochrome/waybar/monochrome.css");' /home/gwallgof/.config/waybar/style.css
sed -i '2c\@import url("file:///home/gwallgof/.config/colorschemes/monochrome/waybar/monochrome.css");' /home/gwallgof/.config/waybar/waybarmodes/floating/style.css
sed -i '2c\@import url("file:///home/gwallgof/.config/colorschemes/monochrome/waybar/monochrome.css");' /home/gwallgof/.config/waybar/waybarmodes/simple/style.css
sed -i '2c\@import url("file:///home/gwallgof/.config/colorschemes/monochrome/waybar/monochrome.css");' /home/gwallgof/.config/waybar/waybarmodes/dock/style.css
pkill waybar
waybar &

# Apply rofi

echo '@import "/home/gwallgof/.config/colorschemes/monochrome/rofi/config.rasi"' > ~/.config/rofi/config.rasi

# Apply Alacritty

sed -i '2c\general.import = [ "/home/gwallgof/.config/colorschemes/monochrome/alacritty/monochrome.toml" ]' ~/.config/alacritty/alacritty.toml

#Apply Hypr

sed -i '2c\source = ~/.config/colorschemes/monochrome/hypr/colors/monochrome.conf' /home/gwallgof/.config/hypr/hyprland.conf

#Apply GTK Theme And Icon Theme

gsettings set org.gnome.desktop.interface gtk-theme "MonoThemeDark"
gsettings set org.gnome.desktop.interface icon-theme 'YAMIS'

#Apply Wallpaper

waypaper --wallpaper /home/gwallgof/Pictures/wallpapers/monochrome/"06. Graphite Mono.png"

exit



