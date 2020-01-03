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
if uname -s | grep -q 'Darwin' ; then
  alias ctags="`brew --prefix`/bin/ctags"
  alias ctags >> ~/.bashrc
fi

# FZF
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Local bins
export PATH=~/.local/bin/:$PATH

# GHC
export PATH=~/.stack/programs/x86_64-linux/ghc-8.0.2/bin/:$PATH

# EDITOR
export EDITOR=$(which nvim)

# Mac
export ASDF_DIR=$(brew --prefix asdf)
export ASDF_DATA_DIR=~/.asdf

. /usr/local/opt/asdf/asdf.sh
