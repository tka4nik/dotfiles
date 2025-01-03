#!/bin/bash

wallpaper=$1
echo $wallpaper
if [[ ! -e $wallpaper ]] ; then
	echo "Invalid path"
	exit 1
fi

swww img "$wallpaper" --transition-type outer
sleep 1
wal -i "$wallpaper" --saturate 0.7 -n -b 010101 -q
pywalfox update

exit 0
