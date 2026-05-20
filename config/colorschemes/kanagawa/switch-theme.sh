sed -i '4c\folder = ~/Pictures/wallpapers/kanagawa/' /home/gwallgof/.config/waypaper/config.ini

#Apply waybar

sed -i '2c\@import url("file:///home/gwallgof/.config/colorschemes/kanagawa/waybar/kanagawa.css");' /home/gwallgof/.config/waybar/style.css
sed -i '2c\@import url("file:///home/gwallgof/.config/colorschemes/kanagawa/waybar/kanagawa.css");' /home/gwallgof/.config/waybar/waybarmodes/floating/style.css
sed -i '2c\@import url("file:///home/gwallgof/.config/colorschemes/kanagawa/waybar/kanagawa.css");' /home/gwallgof/.config/waybar/waybarmodes/simple/style.css
sed -i '2c\@import url("file:///home/gwallgof/.config/colorschemes/kanagawa/waybar/kanagawa.css");' /home/gwallgof/.config/waybar/waybarmodes/dock/style.css
pkill waybar
waybar &

# Apply rofi

echo '@import "/home/gwallgof/.config/colorschemes/kanagawa/rofi/config.rasi"' > ~/.config/rofi/config.rasi

# Apply Alacritty

sed -i '2c\general.import = [ "/home/gwallgof/.config/colorschemes/kanagawa/alacritty/kanagawa.toml" ]' ~/.config/alacritty/alacritty.toml

#Apply Hypr

sed -i '2c\source = ~/.config/colorschemes/kanagawa/hypr/colors/kanagawa.conf' /home/gwallgof/.config/hypr/hyprland.conf

#Apply GTK Theme And Icon Theme

gsettings set org.gnome.desktop.interface gtk-theme "Kanagawa-BL-MB-Dark-Dragon"
gsettings set org.gnome.desktop.interface icon-theme 'Kanagawa'

#Apply Wallpaper

waypaper --wallpaper /home/gwallgof/Pictures/wallpapers/kanagawa/256271-2560x1600-desktop-hd-great-wave-off-kanagawa-wallpaper-image.jpg

exit



