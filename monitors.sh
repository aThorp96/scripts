#!/bin/sh

DMENU="/usr/bin/dmenu"

SCREENPATH="$HOME/.screenlayout/"

PROMPT="Chose a screen layout"

LAYOUT=$(ls $SCREENPATH | sed 's/ /\n/g' | $DMENU -p "$PROMPT" -i )

/bin/bash $SCREENPATH$LAYOUT
