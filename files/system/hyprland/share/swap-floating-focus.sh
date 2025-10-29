#!/usr/bin/env bash

hyprctl activewindow -j | jq '.floating' | grep ^true$ && hyprctl dispatch focuswindow tiled || hyprctl dispatch focuswindow floating
