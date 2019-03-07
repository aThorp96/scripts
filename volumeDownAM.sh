#! /bin/bash

volume=$(amixer -D default get Master | grep Mono: | cut -d '[' -f 2 | cut -d '%' -f 1)

if [ $volume -gt 0 ]
then
    amixer -D default sset Master 5%- > /dev/null
fi
