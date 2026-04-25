if status is-interactive
    # Commands to run in interactive sessions can go here
end

source ~/.asdf/asdf.fish

set TERM xterm
set PATH "$HOME/.cabal/bin:$HOME/.ghcup/bin:$HOME/.local/bin:$PATH"

# ALIAS
alias vim=nvim
alias fef='vim ~/.config/fish/config.fish'
alias fuf='source ~/.config/fish/config.fish'
alias g=git
alias tmuxinator="TERM=screen-256color-bce tmuxinator"
alias tks="TERM=screen-256color-bce tmux kill-session -t"
alias tas="TERM=screen-256color-bce tmux attach-session -t"
alias tds="TERM=screen-256color-bce tmux detach"
alias tls="TERM=screen-256color-bce tmux ls"
alias trs="TERM=screen-256color-bce tmux rename-session"
alias tns="TERM=screen-256color-bce tmux new-session -s"

# Local bins
# export PATH=~/.local/bin/:~/.bin:$PATH

# EDITOR
export EDITOR=/snap/bin/nvim

# Open SSL
# export PATH=$HOME/openssl/bin:$PATH
# export LD_LIBRARY_PATH=$HOME/openssl/lib
export LC_ALL="en_US.UTF-8"
export JAVA_HOME=~/.asdf/installs/java/openjdk-18/
export ANDROID_HOME=~/Library/Android/sdk/
# export PATH=$PATH:$ANDROID_HOME/platform-tools

set GTK_IM_MODULE 'fcitx'
set QT_IM_MODULE 'fcitx'
set SDL_IM_MODULE 'fcitx'
set XMODIFIERS '@im=fcitx'

direnv hook fish | source
