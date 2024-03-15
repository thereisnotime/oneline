#!/usr/bin/env bash

sudo apt install -y chrome-gnome-shell gnome-shell-extension-manager gnome-tweaks
gsettings set org.gnome.mutter dynamic-workspaces false
gsettings set org.gnome.desktop.wm.preferences num-workspaces 1
gsettings set org.gnome.desktop.interface enable-animations false
gsettings set org.gnome.desktop.interface workspace-switch-animation-time 0
gsettings set org.gnome.desktop.wm.preferences audible-bell false
