#!/bin/sh

target="$1"

IPVPN="$(/sbin/ifconfig | grep 10.10 | awk '{print $2}' | head -n 1)"

echo $IPVPN 
tmux set -g status-right '#[fg=colour232,bold,bg=colour71]#(echo "  " '$IPVPN' ) #[fg=colour16,bold,bg=colour210]#(echo " "  " '$target' ")'
