" (Neo)Vim Configuration
" by Cristhian Motoche
" Oct 2021

" PLUGINGS
call g:plug#begin(stdpath('data') . '/plugged')
  source ~/.config/nvim/pluggins.vim
call g:plug#end()

" CONFIG FILES
source ~/.config/nvim/config/basic.vim
source ~/.config/nvim/config/ctrlp.vim
source ~/.config/nvim/config/binds.vim
source ~/.config/nvim/config/whitespace.vim
