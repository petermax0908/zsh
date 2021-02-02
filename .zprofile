#!/bin/zsh
# ZSH profile file. Runs on login. Environmental variables are set here.
# Default programs:
export EDITOR="vim"
export BROWSER="firefox"
# Clean up the $HOME directory
export TMP="$HOME/.cache/tmp"
export TEMP="$TMP"
export TMPDIR="$TMP"
export WGETRC="$HOME/.config/wgetrc"
export ZDOTDIR="$HOME/.config/zsh"
export LESSHISTFILE="$HOME/.cache/lesshst"
export XDG_DATA_HOME="$HOME/.local/share"
export GTK2_RC_FILES="$HOME/.config/gtk-2.0/gtkrc-2.0"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_CONFIG_HOME="$HOME/.config"
export NPM_CONFIG_USERCONFIG="$HOME/.config/npmrc"
# Allow to run locally installed scripts
export PATH=$PATH":$HOME/.local/bin"
export PATH=$PATH":$HOME/.config/zsh/scripts"
# Colored GCC warnings and errors
export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'
# Colorful man copied from github.com/sdushantha
export LESS_TERMCAP_mb=$(printf '\e[01;31m') # enter blinking mode - red
export LESS_TERMCAP_md=$(printf '\e[01;35m') # enter double-bright mode - bold, magenta
export LESS_TERMCAP_me=$(printf '\e[0m')     # turn off all appearance modes (mb, md, so, us)
export LESS_TERMCAP_se=$(printf '\e[0m')     # leave standout mode
export LESS_TERMCAP_so=$(printf '\e[01;33m') # enter standout mode - yellow
export LESS_TERMCAP_ue=$(printf '\e[0m')     # leave underline mode
export LESS_TERMCAP_us=$(printf '\e[04;36m') # enter underline mode - cyan

