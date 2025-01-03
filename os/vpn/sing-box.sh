#!/bin/bash

xray_state=$(ip l | grep tun0 -c)

if [[ $xray_state -eq 0  ]]; then
	echo "Started xray"
	sudo systemctl start sing-box.service
elif [[ $xray_state -ne 0 ]]; then
	echo "Stopped xray"
	sudo systemctl stop sing-box.service
else
	sudo systemctl restart xray.service
	echo "Something is wrong, restarting xray.."
fi
