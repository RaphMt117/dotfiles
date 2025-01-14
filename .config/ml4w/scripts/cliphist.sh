#!/bin/bash

case $1 in

    # delete selected entry
    d) cliphist list | rofi -dmenu -replace -config ~/.config/rofi/config-cliphist.rasi | cliphist delete
       ;;

    # clear clipboard
    w) if [ `echo -e "Clear\nCancel" | rofi -dmenu -config ~/.config/rofi/config-short.rasi` == "Clear" ] ; then
            cliphist wipe
       fi
       ;;

    # list the last clipboard entries in a rofi instance
    *) cliphist list | rofi -dmenu -replace -config ~/.config/rofi/config-cliphist.rasi | cliphist decode | wl-copy
       ;;
esac

