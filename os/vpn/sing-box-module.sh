#!/bin/bash

# set -e
set -B
set -x

status=$(ip l | grep tun0 -c)

if [[ "$status" -gt "0" ]]; then
	echo "{ \"text\": \""󱛀"\", \"tooltip\": \""$tooltip"\" }"
elif [[ "$status" -eq "0" ]]; then
	echo "{ \"text\": \""󰤯"\", \"tooltip\": \""$tooltip"\" }"
fi


