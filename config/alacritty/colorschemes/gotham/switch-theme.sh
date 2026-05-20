sed -i '4c\folder = ~/Pictures/wallpapers/gotham/' /home/gwallgof/.config/waypaper/config.ini

#Apply waybar

sed -i '2c\@import url("file:///home/gwallgof/.config/colorschemes/gotham/waybar/gotham.css");' /home/gwallgof/.config/waybar/style.css
sed -i '2c\@import url("file:///home/gwallgof/.config/colorschemes/gotham/waybar/gotham.css");' /home/gwallgof/.config/waybar/waybarmodes/floating/style.css
sed -i '2c\@import url("file:///home/gwallgof/.config/colorschemes/gotham/waybar/gotham.css");' /home/gwallgof/.config/waybar/waybarmodes/simple/style.css
sed -i '2c\@import url("file:///home/gwallgof/.config/colorschemes/gotham/waybar/gotham.css");' /home/gwallgof/.config/waybar/waybarmodes/dock/style.css
pkill waybar
waybar &

# Apply rofi

echo '@import "/home/gwallgof/.config/colorschemes/gotham/rofi/config.rasi"' > ~/.config/rofi/config.rasi

# Apply Alacritty

sed -i '2c\general.import = [ "/home/gwallgof/.config/colorschemes/gotham/alacritty/gotham.toml" ]' ~/.config/alacritty/alacritty.toml

#Apply GTK Theme And Icon Theme

gsettings set org.gnome.desktop.interface gtk-theme "Arc-Dark"
gsettings set org.gnome.desktop.interface icon-theme 'YAMIS'

#Apply Wallpaper

waypaper --wallpaper /home/gwallgof/Pictures/wallpapers/gotham/closeup_view_of_big_green_leaves_dark_background_4k_hd_nature-HD-1779852131.jpg

exit



