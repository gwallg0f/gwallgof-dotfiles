sed -i '4c\folder = ~/Pictures/wallpapers/tokyonightalt/' /home/gwallgof/.config/waypaper/config.ini

#Apply waybar

sed -i '2c\@import url("file:///home/gwallgof/.config/colorschemes/tokyonight/waybar/tokyonight.css");' /home/gwallgof/.config/waybar/style.css
sed -i '2c\@import url("file:///home/gwallgof/.config/colorschemes/tokyonight/waybar/tokyonight.css");' /home/gwallgof/.config/waybar/waybarmodes/floating/style.css
sed -i '2c\@import url("file:///home/gwallgof/.config/colorschemes/tokyonight/waybar/tokyonight.css");' /home/gwallgof/.config/waybar/waybarmodes/simple/style.css
sed -i '2c\@import url("file:///home/gwallgof/.config/colorschemes/tokyonight/waybar/tokyonight.css");' /home/gwallgof/.config/waybar/waybarmodes/dock/style.css
pkill waybar
waybar &

# Apply rofi

echo '@import "/home/gwallgof/.config/colorschemes/tokyonight/rofi/config.rasi"' > ~/.config/rofi/config.rasi

# Apply Alacritty

sed -i '2c\general.import = [ "/home/gwallgof/.config/colorschemes/tokyonight/alacritty/tokyonight.toml" ]' ~/.config/alacritty/alacritty.toml

#Apply Hypr

sed -i '2c\source = ~/.config/colorschemes/tokyonight/hypr/colors/tokyonight.conf' /home/gwallgof/.config/hypr/hyprland.conf

#Apply GTK Theme And Icon Theme

gsettings set org.gnome.desktop.interface gtk-theme "Kripton-v40"
gsettings set org.gnome.desktop.interface icon-theme 'TokyoNight-SE'

#Apply Wallpaper

waypaper --wallpaper /home/gwallgof/Pictures/wallpapers/tokyonightalt/flowering-rain.png 

exit



