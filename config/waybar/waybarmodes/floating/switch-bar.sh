# Replace style.css

rm ~/.config/waybar/style.css
cp /home/gwallgof/.config/waybar/waybarmodes/floating/style.css ~/.config/waybar/style.css

# Reload

pkill waybar
waybar

