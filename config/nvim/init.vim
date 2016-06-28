" Horizontal bar
set colorcolumn=80 " display vertical line at 80 chars

" Cursor line
set cursorline " show cursor position

" Replace tabs whit spaces
set expandtab " replace tabs with spaces

" Set color
set t_Co=256

" Colorschema
colorscheme ron

" Clipboard
set clipboard+=unnamedplus

" Set noswap
set noswapfile

" Display line number
set rnu
set number

" Set syntax on
syntax on
filetype plugin indent on

" size of a hard tabstop
set tabstop=2

" size of an "indent"
set shiftwidth=2

" Set to auto read when a file is changed from the outside
set autoread

" Set linebreak
set nowrap

" Neomake
autocmd BufWritePost * Neomake

" Deoplete
let g:deoplete#enable_at_startup = 1

" Ag
let g:ag_working_path_mode="r"

" Disable haskell-vim omnifunc
let g:haskellmode_completion_ghc = 0
autocmd FileType haskell setlocal omnifunc=necoghc#omnifunc

" Neco
let g:necoghc_enable_detailed_browse = 1
let g:deoplete#enable_at_startup = 1

" EMMET
let g:user_emmet_leader_key='<C-m>'
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall

" Tagbar
nmap <F8> :TagbarToggle<CR>
set tags=tags;/,codex.tags;/

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

source ~/.config/nvim/pluggins/vim-autotag/plugin/autotag.vim
augroup autotag