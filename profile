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

# PATH
# Add RVM to PATH for scripting
export PATH="$PATH:$HOME/.rvm/bin"
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# LOCAL BIN
export PATH=$PATH:$HOME/.local/bin
export PATH=$PATH:$HOME/.my_bin

# PHP
export PATH=$PATH:/opt/lampp/bin
export PATH=$PATH:$HOME/.my_bin/PHP
export PATH=$PATH:$HOME/.composer/vendor/bin
alias xampp-mysql="sudo /opt/lampp/bin/mysql"
alias xampp-mysqldump="sudo /opt/lampp/bin/mysqldump"

# NVIM
export NVM_DIR="${HOME}/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

# CABAL
export PATH=$PATH:$HOME/.cabal/bin

# HASKELL
alias ht="hasktags ."

# ANDROID SDK
export ANDROID_HOME=$HOME/ANDROID/android-sdk-linux

# PURESCRIPT
export PATH=$PATH:$HOME/.psvm/current/bin

# SCALA
export PATH=$PATH:$HOME/.scala/scala-2.11.8/bin
export ACTIVATOR_HOME="${HOME}/.scala/activator-1.3.10/activator-dist-1.3.10/bin/"
export PATH=$PATH:$ACTIVATOR_HOME

# PROMPT_COMMAND
export PROMPT_COMMAND='if [ "$(id -u)" -ne 0 ]; then echo "$(date "+%Y-%m-%d.%H:%M:%S") $(pwd) $(tail ~/.zsh_history -n 1  | sed -n "s/.*[[:digit:]]*:[[:digit:]];//p")" >> ~/.logs/bash-history-$(date "+%Y-%m-%d").log; fi'
precmd() { eval "$PROMPT_COMMAND" }

# HEROKU
PATH="/usr/local/heroku/bin:$PATH"

# FZF
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
