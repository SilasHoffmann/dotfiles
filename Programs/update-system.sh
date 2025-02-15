#!/bin/bash

echo "Starting full system upgrade:"
sudo pacman -Syu

echo "Updating Flatpak applications:"
flatpak update

echo "Completed all updates."
sleep 2