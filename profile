# ALIAS
# NVIM
alias vim="nvim"

# TMUX
alias tks="tmux kill-session -t"
alias tas="tmux attach-session -t"
alias tds="tmux detach"
alias tls="tmux ls"
alias trs="tmux rename-session"

# PATH
# Add RVM to PATH for scripting
export PATH="$PATH:$HOME/.rvm/bin"

export PATH=$PATH:$HOME/.local/bin
export PATH=$PATH:$HOME/.my_bin

# PHP
export PATH=$PATH:/opt/lampp/bin
export PATH=$PATH:$HOME/.my_bin/PHP
export PATH=$PATH:$HOME/.composer/vendor/bin
alias xampp-mysql="sudo /opt/lampp/bin/mysql"
alias xampp-mysqldump="sudo /opt/lampp/bin/mysqldump"

# NVIM
export PATH=$PATH:$HOME/.nvm/versions/node/v5.10.1/bin/

# CABAL
export PATH=$PATH:$HOME/.cabal/bin

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# PROMPT_COMMAND
export PROMPT_COMMAND='if [ "$(id -u)" -ne 0 ]; then echo "$(date "+%Y-%m-%d.%H:%M:%S") $(pwd) $(tail ~/.zsh_history -n 1)" >> ~/.logs/bash-history-$(date "+%Y-%m-%d").log; fi'

