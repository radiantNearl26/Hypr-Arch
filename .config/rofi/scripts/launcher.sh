#!/usr/bin/env bash

## True Owner:
# Author : Aditya Shakya (adi1090x)
# Github : @adi1090x
#
## Modified by:
# Author : Asmit Das Choudhury (radiantNearl26)
# Git : @radiantNearl26
#
## Launcher : Launch your favourite apps with ease. Replacement for ulauncher.

dir="$HOME/.config/rofi/styles"

## Run
rofi \
    -show drun \
    -theme ${dir}/launcher.rasi
