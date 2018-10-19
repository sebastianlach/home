# spawn tmux on start or attach if possible
test -z "$TMUX" && (tmux attach || tmux new-session)

