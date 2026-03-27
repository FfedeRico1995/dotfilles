#!/bin/bash
IFACE=$(ip addr | grep tun0 | awk '{print $2}' | cut -d '/' -f1 | head -n 1)
if [ -n "$IFACE" ]; then
    echo "HTB: $IFACE"
else
    echo "Disconnected"
fi
