#!/usr/bin/env bash

## True Owner:
# Author : Aditya Shakya (adi1090x)
# Github : @adi1090x
#
## Modified by:
# Author : Asmit Das Choudhury (radiantNearl26)
# Git : @radiantNearl26
#
## Applets : Favorite Applications

# Import Current Theme
theme="~/.config/rofi/styles/applets.rasi"

# Theme Elements
prompt='Overview'
mesg="Installed Packages : `pacman -Q | wc -l` (pacman) \
	Installed Dependencies: 476"

# Rofi CMD
rofi -dmenu \
	-p "$prompt" \
	-mesg "$mesg" \
	-markup-rows \
	-theme ${theme}

