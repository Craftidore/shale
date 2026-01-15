#!/usr/bin/env bash

hyprctl dispatch fullscreenstate `hyprctl activewindow -j | jq '.fullscreen'` `if hyprctl activewindow -j | jq '.fullscreenClient' | grep '1\|2\|3' >/dev/null; then echo 0; else echo 3; fi`
