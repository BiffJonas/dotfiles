#!/usr/bin/env bass
NETWORK=$(nmcli -t -f active,ssid dev wifi | awk -F":" '/yes/ {print $2}')
NETWORK="${NETWORK:-"Down"}"
if [ $NETWORK == Down ]; then
    NETWORK="\033[31m $NETWORK \033[0m"
else
    NETWORK="\033[32m $NETWORK \033[0m"
fi
echo "$NETWORK"
