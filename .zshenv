#!/bin/zsh
# .zshenv file. Usually runs on every zsh. 
# Environmental variables are set here.
export skip_global_compinit="1"
export TMP="$HOME/.cache/tmp"
export TEMP="$TMP"
export TMPDIR="$TMP"
export LESSHISTFILE="$HOME/.cache/lesshst"
export XDG_DATA_HOME="$HOME/.local/share"
export GTK2_RC_FILES="$HOME/.config/gtk-2.0/gtkrc-2.0"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_CONFIG_HOME="$HOME/.config"
export PATH=$PATH":$HOME/.local/bin"
export PATH=$PATH":$HOME/.config/zsh/scripts"
# Interactive shells only
if [[ ! -o norcs ]]; then
 export EDITOR="vim"
 export BROWSER="firefox"
 export WGETRC="$HOME/.config/wgetrc"
 export ZDOTDIR="$HOME/.config/zsh"
 export NPM_CONFIG_USERCONFIG="$HOME/.config/npmrc"
fi
