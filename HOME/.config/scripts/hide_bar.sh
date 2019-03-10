#!/usr/bin/env bash

# for toggling bar visibility on/off

bar_class=$1

visible_windows=$(xdotool search --onlyvisible --classname $bar_class)
if [[ $visible_windows ]]
then  # hide bar
    xdotool windowunmap $visible_windows
    bspc config top_padding 0
else  # show bar
    xdotool search --classname $bar_class windowmap
fi
