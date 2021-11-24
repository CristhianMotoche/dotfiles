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

# Local bins
export PATH=~/.local/bin/:~/.bin:$PATH

# EDITOR
export EDITOR=$(which nvim)

# Mac
if uname -s | grep -q 'Darwin' ; then
  alias ctags="`brew --prefix`/bin/ctags"
  alias ctags >> ~/.bashrc
  export ASDF_DIR=$(brew --prefix asdf)
fi

# Open SSL
export PATH=$HOME/openssl/bin:$PATH
export LD_LIBRARY_PATH=$HOME/openssl/lib
export LC_ALL="en_US.UTF-8"
