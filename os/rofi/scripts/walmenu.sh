#!/bin/bash

choice=$(ls -1 /home/tka4nik/dotfiles/os/wal/wallpapers/ | rofi -dmenu -theme /home/tka4nik/dotfiles/os/rofi/style-wal.rasi)
wallpaper="/home/tka4nik/dotfiles/os/wal/wallpapers/"$choice
echo "$wallpaper"


if [[ -f $wallpaper ]] ; then
	ln -sfT $wallpaper ~/dotfiles/os/rofi/wallpaper.png
	/home/tka4nik/dotfiles/os/rofi/scripts/walswitcher.sh "$wallpaper"
else
	echo "Image doesn't exist"
	exit 1
fi
