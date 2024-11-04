#! /usr/bin/env bash

DEVICE="Wacom Intuos BT S"
PAD="$DEVICE Pad pad"
STY="$DEVICE Pen stylus"

# configure the rotation on stylus, not pad!
echo "configuring $STY"
xsetwacom --shell set "$STY" Rotate none
xsetwacom --shell set "$STY" CursorProximity 30
echo

echo "configuring $PAD"
xsetwacom --shell set "$PAD" Button 1 "key +ctrl z -ctrl"
xsetwacom --shell set "$PAD" Button 2 "key +ctrl +shift z -shift -ctrl"
xsetwacom --shell set "$PAD" Button 3 "button +4 " # scroll up
xsetwacom --shell set "$PAD" Button 8 "button +5 " # scroll down
xsetwacom --shell set "$PAD" MapToOutput HEAD-0
echo
