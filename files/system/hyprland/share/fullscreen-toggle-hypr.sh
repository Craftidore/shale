#!/usr/bin/env bash

hyprctl dispatch fullscreenstate `if hyprctl activewindow -j | jq '.fullscreen' | grep '1\|2\|3' >/dev/null; then echo 0; else echo $1; fi` `hyprctl activewindow -j | jq '.fullscreenClient'`
