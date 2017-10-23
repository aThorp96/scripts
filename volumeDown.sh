#! /bin/bash

read  VOL < /tmp/volumeLevel
if [ $VOL -gt 0 ]
then
    pactl set-sink-volume 0 -5%
    VOL=$(($VOL - 5))
    echo $VOL > /tmp/volumeLevel
fi
