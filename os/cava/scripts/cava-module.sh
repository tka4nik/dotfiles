#!/bin/bash

cava -p ~/.config/cava/config | while read -r line; do
	waveform=$(sed -u 's/;//g;s/0/▁/g;s/1/▂/g;s/2/▃/g;s/3/▄/g;s/4/▅/g;s/5/▆/g;s/6/▇/g;s/7/█/g;' <<< "$line")
	name=$(playerctl -f "{{playerName}}: {{artist}} - {{title}}" metadata)
	name=$(sed -u 's/"//g' <<< "$name")
	echo "{\"text\": \""$waveform"\",\"tooltip\": \""$name"\" }"
done
	
