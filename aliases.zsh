# --interactive     prompt before overwrite
# --verbose         explain what is being done
# --changes         like verbose but report only when a change is made
alias cp="cp --interactive --verbose"
alias mv="mv --interactive --verbose"
alias rm="rm --verbose"
alias ln='ln --interactive --verbose'
alias chmod="chmod --changes"
alias chown="chown --changes"
alias mkdir="mkdir --verbose"
# -F	append indicator (one of */=>@|) to entries
# -v	natural sort of (version) numbers within text 
alias ls='ls -Fv --human-readable --color=auto --group-directories-first'
alias grep='grep --colour=auto'
alias music-dl='youtube-dl --extract-audio --audio-format mp3'

