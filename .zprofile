#!/bin/zsh
# zsh profile file. Runs on login. Environmental variables are set here.
# Adds `~/.local/bin` and my zsh scripts folder to $PATH
export PATH="$PATH:$(du "$HOME/.local/bin" | cut -f2 | paste -sd ':')"
export PATH="$PATH:$(du "$HOME/.config/zsh/scripts" | cut -f2 | paste -sd ':')"
# cleanup and stuff
export EDITOR="/usr/bin/vim"
export TMP="$HOME/.cache/tmp"
export TEMP="$TMP"
export TMPDIR="$TMP"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"
export GTK2_RC_FILES="${XDG_CONFIG_HOME:-$HOME/.config}/gtk-2.0/gtkrc-2.0"
export LESSHISTFILE="-"
export WGETRC="${XDG_CONFIG_HOME:-$HOME/.config}/wgetrc"
export INPUTRC="${XDG_CONFIG_HOME:-$HOME/.config}/inputrc"
export ZDOTDIR="${XDG_CONFIG_HOME:-$HOME/.config}/zsh"
