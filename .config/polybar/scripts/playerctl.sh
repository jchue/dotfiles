#!/bin/sh

player_status=$(playerctl status 2> /dev/null)

if [[ -n "${player_status-}" ]]; then

    if [[ "$player_status" = "Playing" ]]; then
        playpause=""
    elif [[ "$player_status" = "Paused" ]]; then
        playpause=""
    fi

    echo "%{A1:playerctl previous:}%{A} %{A1:playerctl play-pause:}$playpause%{A} %{A1:playerctl next:}%{A}  $(playerctl metadata artist) - $(playerctl metadata title)"

else

    echo " "

fi

