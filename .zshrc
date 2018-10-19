# history configuration
HISTFILE="$HOME/.history"
HISTSIZE=999999999
SAVEHIST=$HISTSIZE
setopt SHARE_HISTORY

# prompt configuration
PROMPT="%F{green}%n%f@%m%f %F{yellow}%1~%f %# "
RPROMPT="[%F{${1:-green}}%~%f]"

# enable syntax highlighting
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# spawn tmux on start or attach if possible
test -z "$TMUX" && (tmux attach || tmux new-session)

