#!/bin/bash

lmin=10
csize=20
ntime=1
lscript=$HOME/.config/i3/lock.sh

xautolock -time $lmin -locker $lscript -notify $ntime \
	-corners ---- -cornersize $csize -detectsleep
