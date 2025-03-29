#!/bin/bash

# Set the file to modify
hypr-config="$HYPRSRC/env_vars.conf"

gtk2-config="$XDG_CONFIG_HOME/gtk-3.0/"
gtk3-config="$XDG_CONFIG_HOME/gtk-3.0/"
gtk3-config-file="$XDG_CONFIG_HOME/gtk-3.0/settings.ini"
gtk4-config="$XDG_CONFIG_HOME/gtk-4.0/"

# Use sed to toggle the string
## GTK Configuration:
sed -i "s/Arc-Lighter/Arc-Dark/g; t; s/Arc-Dark/Arc-Lighter/g" "$gtk3-config-file"
sed -i "s/Papirus-Light/Papirus-Dark/g; t; s/Papirus-Dark/Papirus-Light/g" "$gtk3-config-file"

## Hyprland Configuration:
sed -i "s/Arc-Lighter/Arc-Dark/g; t; s/Arc-Dark/Arc-Lighter/g" "$hypr-config"

# Used echo temporarily. Will change to hypr-notify later.
echo "Operation successfull. Theme switched."
