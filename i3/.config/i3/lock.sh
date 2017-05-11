#!/bin/bash
scrot -e 'convert -blur 0x3 $f ~/lockbg.png;rm $f'
convert -gravity center -composite ~/lockbg.png ~/.config/i3/lock-amber.png ~/lockfinal.png
i3lock -u -i ~/lockfinal.png
rm ~/lockfinal.png ~/lockbg.png
