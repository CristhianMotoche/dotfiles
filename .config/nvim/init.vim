" Horizontal bar
set colorcolumn=80 " display vertical line at 80 chars

" Cursor line
set cursorline " show cursor position

" Replace tabs whit spaces
set expandtab " replace tabs with spaces

" Colorschema
colorscheme ron

" Display line number
set rnu
set number

" Set syntax on
syntax on
filetype plugin indent on

" size of a hard tabstop
set tabstop=4

" size of an "indent"
set shiftwidth=4

" Set to auto read when a file is changed from the outside
set autoread

" Set linebreak
set nowrap

" Neomake
autocmd BufWritePost * Neomake

" Deoplete
let g:deoplete#enable_at_startup = 1

" Disable haskell-vim omnifunc
let g:haskellmode_completion_ghc = 0
autocmd FileType haskell setlocal omnifunc=necoghc#omnifunc

call g:plug#begin('~/.config/nvim/bundle')

if filereadable(expand('~/.config/nvim/pluggins.vim'))
  source ~/.config/nvim/pluggins.vim
endif

call g:plug#end()

source ~/.config/nvim/pluggins/autoclose.vim
source ~/.config/nvim/pluggins/haskell.vim
source ~/.config/nvim/config/binds.vim
source ~/.config/nvim/config/whitespace.vim
source ~/.config/nvim/ftplugin/haskell.vim
