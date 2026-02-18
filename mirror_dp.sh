#!/bin/bash

# Get your laptop and projector output names
LAPTOP="eDP-1"
EXTERNAL_DP="HDMI-A-1"

# Check if external display is connected
if wlr-randr | grep -q "$EXTERNAL_DP.*connected"; then
    # Mirror mode: both at position 0,0 (same content)
    wlr-randr --output $LAPTOP --pos 0,0 --output $EXTERNAL_DP --pos 0,0
    notify-send "Display" "Mirroring to external display"
else
    notify-send "Display" "No external display detected"
fi
