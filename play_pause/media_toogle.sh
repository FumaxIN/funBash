#!/bin/bash

# Check if any media is playing
status=$(playerctl status 2>&1)

if [[ $status == "Playing" ]]; then
    # If music is playing, pause it
    playerctl pause
    echo "Music paused"
elif [[ $status == "Paused" ]]; then
    # If music is paused, play it
    playerctl play
    echo "Music playing"
else
    #no media
    echo "No media found"
fi

