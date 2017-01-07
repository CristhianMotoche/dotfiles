# INSTALL ALL THE SOFTWARE YOU NEED

PROGRAMS_PACMAN="yaourt zsh evolution shutter xclip keepassx tmux ctags"
PROGRAMS_YAOURT="evolution-on-git dbvis insync google-chrome python-neovim the_silver_searcher google-talkplugin"

sudo pacman -S $PROGRAMS_PACMAN --noconfirm
yaourt -S $PROGRAMS_YAOURT --noconfirm

