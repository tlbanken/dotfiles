#!/bin/bash

lmin=8
csize=20
ntime=30
lscript=$HOME/.config/i3/lock.sh

xautolock -time $lmin -locker $lscript -notify $ntime \
	-corners ---- -cornersize $csize -detectsleep \
	-notifier "notify-send autolock 'Locking in $ntime seconds'"
