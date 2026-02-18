#!/bin/bash
set +e

# Import environment variables for systemd
dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP=wlroots >/dev/null 2>&1

# Start XDG desktop portal
/usr/lib/xdg-desktop-portal-wlr >/dev/null 2>&1 &

# Keep clipboard content
wl-clip-persist --clipboard regular --reconnect-tries 0 >/dev/null 2>&1 &

# Clipboard content manager - text
wl-paste --type text --watch cliphist store >/dev/null 2>&1 &

# Clipboard content manager - images
wl-paste --type image --watch cliphist store >/dev/null 2>&1 &

# permission authentication
/usr/lib/xfce-polkit/xfce-polkit >/dev/null 2>&1 &
