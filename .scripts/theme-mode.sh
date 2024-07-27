#!/bin/bash

# Set the file to modify
hypr-config="$HYPRSRC/env_vars.conf"
gtk-config="$XDG_CONFIG_HOME/gtk-3.0/settings.ini"

# Use sed to toggle the string
sed -i "s/Arc-Lighter/Arc-Dark/g; t; s/Arc-Dark/Arc-Lighter/g" "$gtk-config"
sed -i "s/Papirus-Light/Papirus-Dark/g; t; s/Papirus-Dark/Papirus-Light/g" "$gtk-config"
sed -i "s/Arc-Lighter/Arc-Dark/g; t; s/Arc-Dark/Arc-Lighter/g" "$hypr-config"
