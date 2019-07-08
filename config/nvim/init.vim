" Deoplete
let g:python_host_prog  = expand('$HOME') . '/.nix-profile/bin/python2.7'
let g:python3_host_prog = expand('$HOME') . '/.nix-profile/bin/python3.7'

set runtimepath+=~/.config/nvim/bundle/deoplete.nvim/
let g:deoplete#enable_at_startup = 1
call remote#host#RegisterPlugin('python3', expand('$HOME') . '/.config/nvim/bundle/deoplete.nvim/rplugin/python3/deoplete.py', [
      \ {'sync': 1, 'name': 'DeopleteInitializePython', 'type': 'command', 'opts': {}},
     \ ])

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
set guicursor=

" Set noswap
set noswapfile

" Display line number
set rnu
set number

" Set syntax on
syntax enable
filetype plugin indent on

" Colorschema
colorscheme morning

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

let g:tagbar_type_haskell = {
      \ 'ctagsbin'  : 'hasktags',
      \ 'ctagsargs' : '-x -c -o-',
      \ 'kinds'     : [
      \  'm:modules:0:1',
      \  'd:data: 0:1',
      \  'd_gadt: data gadt:0:1',
      \  't:type names:0:1',
      \  'nt:new types:0:1',
      \  'c:classes:0:1',
      \  'cons:constructors:1:1',
      \  'c_gadt:constructor gadt:1:1',
      \  'c_a:constructor accessors:1:1',
      \  'ft:function types:1:1',
      \  'fi:function implementations:0:1',
      \  'o:others:0:1'
      \ ],
      \ 'sro'        : '.',
      \ 'kind2scope' : {
      \ 'm' : 'module',
      \ 'c' : 'class',
      \ 'd' : 'data',
      \ 't' : 'type'
      \ },
      \ 'scope2kind' : {
      \ 'module' : 'm',
      \ 'class'  : 'c',
      \ 'data'   : 'd',
      \ 'type'   : 't'
      \ }
      \ }

" Cyclic tag navigation {{{
let g:rt_cw = ''
function! RT()
  let cw = expand('<cword>')
  try
    if cw != g:rt_cw
      execute 'tag ' . cw
      call search(cw,'c',line('.'))
    else
      try
        execute 'tnext'
      catch /.*/
        execute 'trewind'
      endtry
      call search(cw,'c',line('.'))
    endif
    let g:rt_cw = cw
  catch /.*/
    echo "no tags on " . cw
  endtry
endfunction
map <C-]> :call RT()<CR>
" }}}


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
