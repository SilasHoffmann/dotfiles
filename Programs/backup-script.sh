#!/bin/bash
set -euo pipefail

isaacSaveFilePath="/home/silas/.local/share/Steam/steamapps/compatdata/250900/pfx/drive_c/users/steamuser/Documents/My Games/Binding of Isaac Repentance+/save_backups/" #This is the game's backup path for Repentance+ Steam cloud saves
isaacBackupPath="/home/silas/Documents/Saved Savegames/Isaac Backups/"

x4SaveFilePath="/home/silas/.config/EgoSoft/X4/1254538261/save/"
x4BackupPath="/home/silas/Documents/Saved Savegames/X4 Backups/"

#Backup Isaac Repentance+ backup save files
if ! pgrep isaac-ng.exe > /dev/null; then
    7z a "${isaacBackupPath}$(date +"%d-%m-%Y_%H-%M-%S")_isaacrep+-savefile-backup.zip" "${isaacSaveFilePath}"*
fi


#Backup X4: Foundations save file folder
if ! pgrep "Main()" > /dev/null; then
    7z a "${x4BackupPath}$(date +"%d-%m-%Y_%H-%M-%S")_x4f-savefile-backup.zip" "${x4SaveFilePath}"*
fi