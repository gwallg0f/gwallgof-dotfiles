# Replace style.css

rm ~/.config/waybar/style.css
cp /home/gwallgof/.config/waybar/waybarmodes/dock/style.css ~/.config/waybar/style.css

# Reload

pkill waybar
waybar

