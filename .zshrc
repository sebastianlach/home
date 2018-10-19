# history configuration
HISTFILE="$HOME/.zsh_history"
HISTSIZE=999999999
SAVEHIST=$HISTSIZE

# spawn tmux on start or attach if possible
test -z "$TMUX" && (tmux attach || tmux new-session)

