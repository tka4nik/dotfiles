#!/bin/bash

set -e

INPUT=$(wpctl get-volume @DEFAULT_AUDIO_SOURCE@)
if [[ $INPUT =~ "MUTE" ]] ; then
	wpctl set-mute @DEFAULT_AUDIO_SOURCE@ 0
else
	wpctl set-mute @DEFAULT_AUDIO_SOURCE@ 1
fi

exit 0
