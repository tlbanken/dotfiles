#!/bin/bash

# TMPIMG=/tmp/i3lock.png
# SCREENSHOT="scrot $TMPIMG"

# BLUR TYPES FOR IMAGEMAGIC
# BLURTYPE="0x5"
#BLURTYPE="0x2"
#BLURTYPE="5x2"
# BLURTYPE="2x8"
#BLURTYPE="2x3"

# $SCREENSHOT
# convert $TMPIMG -blur $BLURTYPE $TMPIMG
# i3lock -i $TMPIMG
# rm $TMPIMG

TMPBG=/tmp/screen.png
LOCK=$HOME/.config/i3/lock.png
RES=1920x1080
 
ffmpeg -f x11grab -video_size $RES -y -i $DISPLAY -i $LOCK -filter_complex "boxblur=5:1,overlay=(main_w-overlay_w)/2:(main_h-overlay_h)/2" -vframes 1 $TMPBG
i3lock -i $TMPBG
