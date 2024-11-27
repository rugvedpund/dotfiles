#! /usr/bin/env bash

DEVICE="Wacom Intuos BT S"
PAD="$DEVICE Pad pad"
STY="$DEVICE Pen stylus"

# configure the rotation on stylus, not pad!
echo "configuring $STY"
xsetwacom --shell set "$STY" Rotate none
xsetwacom --shell set "$STY" CursorProximity 30
xsetwacom -s set "$STY" Button 2 "button +2"
xsetwacom -s set "$STY" Button 3 "key p"
xsetwacom --shell set "$STY" MapToOutput HEAD-1
echo

echo "configuring $PAD"
xsetwacom --shell set "$PAD" Suppress 5
xsetwacom --shell set "$PAD" Button 1 "key e"
xsetwacom --shell set "$PAD" Button 2 "key o"
xsetwacom --shell set "$PAD" Button 3 "button 5 5 " # scroll down
xsetwacom --shell set "$PAD" Button 8 "button 4 4 " # scroll up
echo
