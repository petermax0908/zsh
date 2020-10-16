##-----------------------------
##         Completion
##-----------------------------
zmodload zsh/complist
autoload -U compinit
compinit -d ~/.cache/zsh/zcompdump-$ZSH_VERSION
# extended globbing
setopt extendedGlob
# enables tab completion navigation with arrowkeys
zstyle ':completion:*' menu select
# adds all dot files/ folders to tab completion
_comp_options+=(globdots)
# tab completion mix from lower to uppercase
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

