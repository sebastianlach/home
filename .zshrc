# history configuration
HISTFILE="$HOME/.zsh_history"
HISTSIZE=999999999
SAVEHIST=$HISTSIZE

# prompt configuration
autoload -Uz promptinit
promptinit
prompt walters

# spawn tmux on start or attach if possible
test -z "$TMUX" && (tmux attach || tmux new-session)

