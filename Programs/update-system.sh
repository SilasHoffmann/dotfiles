#!/bin/bash

echo "Starting full system upgrade:"
sudo pacman -Syu

echo "\nUpdating Flatpak applications:"
flatpak update

echo "\nCompleted all updates."
sleep 2