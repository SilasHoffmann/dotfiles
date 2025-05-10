#!/bin/bash
set -euo pipefail

isaacSaveFilePath="/home/silas/.local/share/Steam/steamapps/compatdata/250900/pfx/drive_c/users/steamuser/Documents/My Games/Binding of Isaac Repentance+/save_backups/" #This is the game's backup path for Repentance+ Steam cloud saves
isaacBackupPath="/home/silas/Documents/Saved Savegames/Isaac Backups/"

#Backup Isaac Repentance+ backup save files
7z a "$isaacBackupPath$(date +"%d-%m-%Y_%H:%M:%S")$(echo "_isaacrep+-savefile-backup.zip")" "${isaacSaveFilePath}*"