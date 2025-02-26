#!/bin/bash
#  ____  _             _    __        __          _
# / ___|| |_ __ _ _ __| |_  \ \      / /_ _ _   _| |__   __ _ _ __
# \___ \| __/ _` | '__| __|  \ \ /\ / / _` | | | | '_ \ / _` | '__|
#  ___) | || (_| | |  | |_    \ V  V / (_| | |_| | |_) | (_| | |
# |____/ \__\__,_|_|   \__|    \_/\_/ \__,_|\__, |_.__/ \__,_|_|
#                                           |___/
# -----------------------------------------------------

# -----------------------------------------------------
# Quit all running waybar instances
# -----------------------------------------------------
killall waybar
pkill waybar
sleep 0.5

# -----------------------------------------------------
# Define current theme name
# -----------------------------------------------------
themestyle="/ml4w-minimal"

# -----------------------------------------------------
# Loading the configuration
# -----------------------------------------------------
config_file="config"
style_file="style.css"

# Check if waybar-disabled file exists
if [ ! -f $HOME/.cache/waybar-disabled ]; then
	waybar -c ~/.config/waybar/themes$themestyle/$config_file -s ~/.config/waybar/themes$themestyle/$style_file &
fi
