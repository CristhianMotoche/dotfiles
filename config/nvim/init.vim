" Horizontal bar
set colorcolumn=80 " display vertical line at 80 chars

" Cursor line
set cursorline

" Replace tabs whit spaces
set expandtab " replace tabs with spaces

" Set mouse = a
set mouse=a

" Set color
set t_Co=256

" Colorschema
colorscheme morning
set termguicolors

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

" ALE
let g:ale_linters = {'haskell': ['hlint', 'hdevtools'], 'python': ['flake8', 'pylint']}
let g:ale_list_window_size = 5
autocmd FileType qf setlocal wrap

" Hasktags
autocmd BufWritePost *.elm silent! !ctags -R .
autocmd BufWritePost *.ts silent! !ctags -R .
autocmd BufWritePost *.js silent! !ctags -R .
autocmd BufWritePost *.py silent! !ctags -R .
autocmd BufWritePost *.hs silent! !hasktags . && mv ctags tags

" Deoplete
let g:python_host_prog  = '/usr/bin/python2.7'
let g:python3_host_prog = '/usr/bin/python3'

set runtimepath+=~/.config/nvim/bundle/deoplete.nvim/
let g:deoplete#enable_at_startup = 1
call remote#host#RegisterPlugin('python3', '$HOME/.config/nvim/bundle/deoplete.nvim/rplugin/python3/deoplete.py', [
      \ {'sync': 1, 'name': 'DeopleteInitializePython', 'type': 'command', 'opts': {}},
     \ ])

" Ag
let g:ag_working_path_mode="r"

" EditorConfig
let g:editorconfig_verbose = 1

" EMMET
let g:user_emmet_leader_key='<C-m>'
let g:user_emmet_install_global = 0
autocmd FileType html,tpl,css EmmetInstall

" PSC ide log level
let g:psc_ide_syntastic_mode = 1
let g:psc_ide_log_level = 3

" Tags
set tags=tags;/,codex.tags;/,tagdogs;/

" FZF
let g:fzf_buffers_jump = 1

command! -bar Tags call fzf#run({'source':"sed '/^\\!/d;s/\t.*//' " . join(tagfiles()) . ' | uniq', 'sink':'tag'})

" Enable hardtime
let g:hardtime_default_on = 0
let g:EasyMotion_smartcase = 1
let g:EasyMotion_use_smartsign_us = 1

" PLUGINGS
call g:plug#begin('~/.config/nvim/bundle')
  if filereadable(expand('~/.config/nvim/pluggins.vim'))
    source ~/.config/nvim/pluggins.vim
  endif
call g:plug#end()

" Extras
source ~/.config/nvim/config/ctrlp.vim
source ~/.config/nvim/config/snippet.vim
source ~/.config/nvim/config/binds.vim
source ~/.config/nvim/config/whitespace.vim
source ~/.config/nvim/config/emmet.vim
source ~/.config/nvim/config/easymotion.vim
augroup autotag
