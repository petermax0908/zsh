# load all the configs
source $ZDOTDIR/completion.zsh
source $ZDOTDIR/bindings.zsh
source $ZDOTDIR/aliases.zsh

# Check for plugins; install instrucitions; load them
if [ ! -d "$ZDOTDIR/plugins/zsh-syntax-highlighting" ]; then
    echo " Fore syntaxhighligting execute following command in '.config/zsh/plugins' folder:"
    echo " git clone --depth 1 https://github.com/zsh-users/zsh-syntax-highlighting.git"
else
    source $ZDOTDIR/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
fi

if [ ! -d "$ZDOTDIR/plugins/zsh-autosuggestions" ]; then
    echo " Fore autosuggestions execute following command in '.config/zsh/plugins' folder:"
    echo " git clone --depth 1 https://github.com/zsh-users/zsh-autosuggestions.git"
else
    source $ZDOTDIR/plugins/zsh-autosuggestions/zsh-autosuggestions.plugin.zsh
fi

# History config
HISTSIZE=5000
SAVEHIST=5000
HISTFILE=~/.cache/zsh_history
# ignore & remove duplicates
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_SAVE_NO_DUPS
# removes spaces for cleaner history
setopt HIST_REDUCE_BLANKS

# load colors
autoload colors; colors

# prompt style
PROMPT="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}$%b "

