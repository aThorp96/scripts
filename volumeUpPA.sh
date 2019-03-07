#! /bin/bash

volume=$(pactl list sinks | grep 'Volume: front-left' | cut -d '/' -f 2,4 | tr -d '% ')
leftVol=$(echo $volume | cut -d '/' -f 1)
rightVol=$(echo $volume | cut -d '/' -f 2)

if [ $leftVol -lt 100 ] || [ $rightVol -lt 100 ]
then
    pactl set-sink-volume 0 +5%
fi

