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

# ANDROID SDK
export ANDROID_HOME="$HOME/ANDROID/android-sdk-linux"

# CABAL
export PATH=$PATH:$HOME/.cabal/bin

# HASKELL
alias ht="hasktags ."

# PURESCRIPT
export PATH=$PATH:$HOME/.psvm/current/bin

# SCALA
export PATH=$PATH:$HOME/.scala/current/bin
export ACTIVATOR_HOME="${HOME}/.scala/current-activator/bin/"
export PATH=$PATH:$ACTIVATOR_HOME

# PROMPT_COMMAND
export PROMPT_COMMAND='if [ "$(id -u)" -ne 0 ]; then echo "$(date "+%Y-%m-%d.%H:%M:%S") $(pwd) $(tail ~/.zsh_history -n 1  | sed -n "s/.*[[:digit:]]*:[[:digit:]];//p")" >> ~/.logs/bash-history-$(date "+%Y-%m-%d").log; fi'
precmd() { eval "$PROMPT_COMMAND" }

# HEROKU
PATH="/usr/local/heroku/bin:$PATH"

# FZF
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# NVIM
export NVIM_PYTHON_LOG_FILE=/tmp/nvim-python.log

# Autocomplete
bindkey '^ ' autosuggest-accept

# Python
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
export PATH="$HOME/.gem/ruby/2.5.0/bin:$PATH"

# Java
export JAVA_HOME=/home/cmotoche/Downloads/jdk-8u161-linux-x64/jdk1.8.0_161/

# EDITOR
export EDITOR=/usr/bin/nvim
