# enable the autocomplete system
autoload -U compinit
zmodload zsh/complist
compinit -d ~/.cache/zcompdump-$ZSH_VERSION
# extended globbing (stash like '*' and '?')
setopt extendedGlob
# adds all dot files/ folders to tab completion
_comp_options+=(globdots)
# enables tab completion navigation with arrowkeys
zstyle ':completion:*' menu select
# tab completion mix from lower to uppercase
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
# 'no matches' message
zstyle ':completion:*:warnings' format ' no matches'
