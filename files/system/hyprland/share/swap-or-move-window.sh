#/usr/bin/env bash

(hyprctl activewindow -j | jq '.grouped | length > 0' | grep ^true$ && hyprctl dispatch moveoutofgroup) || \
    (hyprctl dispatch moveintogroup $1 && hyprctl activewindow -j | jq '.grouped | length > 0' | grep ^true$) || \
    (hyprctl dispatch movewindow $1 | grep ^ok$) || \
    (hyprctl dispatch swapnext)
