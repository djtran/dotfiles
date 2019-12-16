#!/bin/bash 
if [[ "$(playerctl status)" = "Playing" ]] 
then 
    echo -n " : $(playerctl metadata xesam:artist;) - $(playerctl metadata xesam:title)"
else 
    echo -n ""; 
fi
