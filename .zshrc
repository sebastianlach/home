source /opt/antigen/antigen.zsh

antigen bundle robbyrussell/oh-my-zsh lib/
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle rupa/z
antigen bundle git
antigen bundle pip
antigen bundle python
antigen bundle virtualenv
antigen bundle kennethreitz/autoenv

antigen theme gentoo
antigen apply

# spawn tmux on start or attach if possible
test -z "$TMUX" && (tmux attach || tmux new-session)

