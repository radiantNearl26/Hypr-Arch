#!/usr/bin/env bash

## Author  : Aditya Shakya (adi1090x)
## Github  : @adi1090x
#
## Applets : Favorite Applications

# Import Current Theme
source "$HOME"/.config/rofi/applets/shared/theme.bash
theme="$type/$style"

# Theme Elements
prompt='Applications'
mesg="Installed Packages : `pacman -Q | wc -l` (pacman)"

# Rofi CMD
rofi -theme-str 'textbox-prompt-colon {str: "";}' \
	-dmenu \
	-p "$prompt" \
	-mesg "$mesg" \
	-markup-rows \
	-theme ${theme}

