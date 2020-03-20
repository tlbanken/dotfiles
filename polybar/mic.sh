#!/usr/bin/env bash

get_status_icon() {
    # `pactl list | sed -n '/^Source/,/^$/p' | grep Mute | grep yes > /dev/null`
    muteon=`amixer get Capture | grep off`
    if [[ $muteon != "" ]]; then
        # echo "%{F#be5046}  %{F-}"
        echo "  "
    else
        echo 
        # echo ""
    fi
}

get_status_icon

# while read line; do
#     # source #2 is the microphone
#     if [ "$line" == "Event 'change' on source #2" ]; then
#         get_status_icon
#     fi
# done < <(pactl subscribe)
