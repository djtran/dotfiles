#!/bin/bash

pkill glava

while pgrep -x glava >/dev/null; do sleep 1; done

GEOMETRY=$(xrandr | grep "Screen 0" | tr "," "\n" | grep current | awk 'BEGIN {FS = " "} {print $2,$4 }')

glava --desktop -r "setgeometry 0 0 $GEOMETRY"
