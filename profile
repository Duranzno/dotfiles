#!/usr/bin/env sh

export SCRIPT_DIR=~/.config/scripts
export TERMINAL=alacritty
export EDITOR=nvim
if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then exec startx; fi
