#!/bin/bash

echo "Starting full system upgrade:"
sudo pacman -Syu

echo "\nUpdating Flatpak applications:"
flatpak update

echo -e " \nCompleted all updates."
sleep 2