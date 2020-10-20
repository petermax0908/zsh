# load all the configs
source ~/.config/zsh/completion.zsh
source ~/.config/zsh/bindings.zsh
source ~/.config/zsh/aliases.zsh

# check if plugins are installed or load them
zplugins="$HOME/.config/zsh/plugins"
if [ ! -d "$zplugins/zsh-syntax-highlighting" ]; then
    echo " Fore syntaxhighligting execute following command in '.config/zsh/plugins' folder:"
    echo " git clone --depth 1 https://github.com/zsh-users/zsh-syntax-highlighting.git"
else
    source $zplugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
fi

if [ ! -d "$zplugins/zsh-autosuggestions" ]; then
    echo " Fore autosuggestions execute following command in '.config/zsh/plugins' folder:"
    echo " git clone --depth 1 https://github.com/zsh-users/zsh-autosuggestions.git"
else
    source $zplugins/zsh-autosuggestions/zsh-autosuggestions.plugin.zsh
fi

# use history
HISTSIZE=5000
SAVEHIST=5000
HISTFILE=~/.cache/zsh_history
# ignore & remove duplicates
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_SAVE_NO_DUPS
# removes spaces for cleaner history
setopt HIST_REDUCE_BLANKS

# exports
export EDITOR="/usr/bin/vim"
export TMP="$HOME/tmp"
export TEMP="$TMP"
export TMPDIR="$TMP"

# load colors
autoload colors; colors

# prompt style
PROMPT="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}$%b "

# if you want a different prompt. use prompt -l to see available
#autoload -Uz promptinit
#promptinit
#prompt 'your choice here'

# set PATH so it includes user's private ~/.local/bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi
