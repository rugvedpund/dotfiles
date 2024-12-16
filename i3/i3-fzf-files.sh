#!/bin/bash

# Recursively search for files under $HOME and use fzf to select one
selected_file=$(find $HOME -type f | fzf)
echo "$selected_file"

# If a file was selected, open it with xdg-open
if [[ -n "$selected_file" ]]; then
  i3-msg "exec xdg-open \"$selected_file\""
fi

