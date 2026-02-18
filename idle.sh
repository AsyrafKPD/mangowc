#!/bin/bash

#idle settings (swayidle)
swayidle -w \
  timeout 290 'chayang -d 11' \
  timeout 300 'wlr-dpms off' \
  resume 'wlr-dpms on' \
  timeout 480 'loginctl lock-session' \
  timeout 780 'systemctl suspend' \
  before-sleep 'loginctl lock-session' \
  >/dev/null 2>&1 &
