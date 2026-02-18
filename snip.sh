#!/bin/bash

grim -g "$(slurp)" - | satty -c ~/.config/satty/config.toml -f - >/dev/null 2>&1 &
