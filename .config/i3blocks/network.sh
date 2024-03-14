#!/bin/bash

# Run your original command
NETWORK=$(nmcli -t -f active,ssid dev wifi | awk -F":" '/yes/ {print $2}')

# Check if NETWORK is empty
if [ -z "$NETWORK" ]; then
    # If empty, print "down" in red
    echo "<span color='#FF0000'>Down</span>"
else
    # If not empty, print the network name in green
    echo "<span color='#00FF00'>$NETWORK</span>"
fi
