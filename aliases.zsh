##-----------------------------
##           Aliases
##-----------------------------
alias ls='ls -Fv --color=auto --human-readable --group-directories-first'
# all i v & c options make the commands say what they are doing, list changes or ask for confirmation
alias cp='cp -iv'
alias mv='mv -iv'
alias rm='rm -Iv'
alias ln='ln -v'
alias rmdir='rmdir -v'
alias chmod="chmod -c"
alias chown="chown -c"
alias mkdir="mkdir -v"
alias grep='grep --colour=auto'
alias egrep='egrep --colour=auto'
# Add an "alert" alias for long running commands; use: sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "Terminal"'
