#! /bin/bash

read VOL < /tmp/volumeLevel
if [ $VOL -lt 100 ]
then
    pactl set-sink-volume 0 +5%
    VOL=$(($VOL+5))
    echo $VOL > /tmp/volumeLevel
fi

