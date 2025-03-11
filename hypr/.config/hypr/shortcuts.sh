#!/bin/bash

# Define shortcut list
shortcuts="
SUPER + L   = Log out menu
SUPER + T   = Open terminal
SUPER + E   = Open file manager
SUPER + Q   = Close window
SUPER + D   = Open app launcher (Rofi)
SUPER + R   = Reload Hyprland config
SUPER + P   = Take screenshot
SUPER + SHIFT + P = Take screenshot (select area)
SUPER + M   = Open music player
SUPER + N   = Open Neovim
"

# Show the list using Rofi
echo -e "$shortcuts" | rofi -dmenu -p "Shortcuts" -no-custom
