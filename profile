# ALIAS
# SOURCE ZSH
alias upz="source ${HOME}/.zshrc"

# NVIM
alias vim="nvim"

# TMUX
alias tmux="TERM=screen-256color-bce tmux"
alias tks="tmux kill-session -t"
alias tas="tmux attach-session -t"
alias tds="tmux detach"
alias tls="tmux ls"
alias trs="tmux rename-session"
alias tns="tmux new-session -s"

# NVIM
export NVM_DIR="${HOME}/.nvm"

# PROMPT_COMMAND
export PROMPT_COMMAND='if [ "$(id -u)" -ne 0 ]; then echo "$(date "+%Y-%m-%d.%H:%M:%S") $(pwd) $(tail ~/.zsh_history -n 1  | sed -n "s/.*[[:digit:]]*:[[:digit:]];//p")" >> ~/.logs/bash-history-$(date "+%Y-%m-%d").log; fi'
precmd() {
  eval "$PROMPT_COMMAND"
}

# FZF
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# EDITOR
export EDITOR=/usr/bin/nvim
