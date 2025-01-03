#!/bin/bash

set -e

# Snore is a pure bash implementation of 'sleep' that does not start any subprocess
# https://blog.dhampir.no/content/sleeping-without-a-subprocess-in-bash-and-how-to-sleep-forever
snore()
{
    local IFS
    [[ -n "${_snore_fd:-}" ]] || exec {_snore_fd}<> <(:)
    read ${1:+-t "$1"} -u $_snore_fd || :
}


# Delay in seconds between updates
DELAY=0.5

while snore $DELAY ; do
	INPUT=$(wpctl get-volume @DEFAULT_AUDIO_SOURCE@)
	while read line; do
		# echo "$line"
		if [[ $line =~ "MUTE" ]] ; then
			echo "󰍭"
		else
			echo "󰍬"
		fi
	done <<< "$INPUT"
done

exit 0
			
