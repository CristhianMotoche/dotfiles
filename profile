# ALIAS
alias upz="source ${HOME}/.zshrc"
alias vim="TERM=screen-256color-bce nvim"
alias tmux="TERM=screen-256color-bce tmux"
alias tmuxinator="TERM=screen-256color-bce tmuxinator"
alias tks="tmux kill-session -t"
alias tas="tmux attach-session -t"
alias tds="tmux detach"
alias tls="tmux ls"
alias trs="tmux rename-session"
alias tns="tmux new-session -s"

# FZF
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# EDITOR
export EDITOR=$(which nvim)
