#!/bin/bash

sudo pacman -Sy yay

# Update system packages
yay -Syu --noconfirm

# Install Hyprland and essential utilities
yay -S \
  hyprland hyprpaper hyprland-autoname-workspaces-git \
  xorg-server xorg-xwayland xorg-xlsclients \
  alacritty rofi dunst \
  polkit-gnome swaybg swaylock swayidle \
  firefox thunar thunar-archive-plugin thunar-volman gvfs \
  ttf-jetbrains-mono ttf-nerd-fonts-symbols-common \
  network-manager-applet pavucontrol \
  brightnessctl playerctl \
  --noconfirm

# Install additional packages for a better experience
yay -S \
  swaylock-effects-git nwg-look \
  waybar-hyprland-git \
  grim slurp wf-recorder \
  wofi xdg-desktop-portal-hyprland-git \
  --noconfirm

# Install stow for dotfiles
yay -Sy stow

echo "Installation complete! Please reboot to apply changes."

