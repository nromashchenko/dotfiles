#!/bin/sh

userresources=$HOME/.Xresources
sysresources=/etc/X11/xinit/.Xresources

# merge in defaults
if [ -f $sysresources ]; then
    xrdb -merge $sysresources
fi

if [ -f "$userresources" ]; then
    xrdb -merge "$userresources"
fi


exec i3 > $HOME/.i3.log 2>&1
