#!/bin/bash

# Get the list of all open windows with their titles and IDs
windows=$(i3-msg -t get_tree | jq -r '
    recurse(.nodes[]?, .floating_nodes[]?)
    | select(.window)
    | "\(.window) \(.name)"
')

printf "$windows"

# Use fzf to select a window
selected=$(echo "$windows" | fzf --no-preview --delimiter=' ' --with-nth=2..)

# Extract the window ID from the selected line
window_id=$(echo "$selected" | awk '{print $1}')

# Focus the selected window
if [ -n "$window_id" ]; then
    i3-msg "[id=\"$window_id\"] focus"
fi
