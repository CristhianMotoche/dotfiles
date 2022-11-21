nnoremap    <F3> :<C-U>setlocal lcs=tab:>-,trail:·,eol:$ list! list? <CR>

" contro-s saving
noremap <C-S> :update<CR>
vnoremap <C-S> <C-C>:update<CR>
inoremap <C-S> <C-O>:update<CR><ESC>

" Bubble single lines
nmap <C-k> ddkP
nmap <C-j> ddp

" Bubble multiple lines
vmap <C-k> xkP`[V`]
vmap <C-j> xp`[V`]

nnoremap <F4> :SSave<CR>

" Zoom / Restore window.
function! s:ZoomToggle() abort
    if exists('t:zoomed') && t:zoomed
        execute t:zoom_winrestcmd
        let t:zoomed = 0
    else
        let t:zoom_winrestcmd = winrestcmd()
        resize
        vertical resize
        let t:zoomed = 1
    endif
endfunction
command! ZoomToggle call s:ZoomToggle()
nnoremap <silent> <C-A> :ZoomToggle<CR>

" Quickfix
nmap cn :cn<CR>
nmap cN :cp<CR>
nmap cx :cclose<CR>
nmap co :copen<CR>

" Hop
nmap L :HopWord<CR>
nmap J :HopLine<CR>

let mapleader = ","
map + <leader><leader>w
map <leader>+ <leader><leader>b
map <leader>j :wincmd j<CR>
map <leader>k :wincmd k<CR>
nmap <leader>h :wincmd h<CR>
nmap <leader>l :wincmd l<CR>
noremap <leader>s :update<CR>
vnoremap <leader>s <C-C>:update<CR>
inoremap <leader>s <C-O>:update<CR><ESC>
nnoremap <leader>v <C-w>v
nmap <leader>n :NERDTreeToggle<CR>
nmap <leader>o :NERDTreeFind<CR>
nmap <leader>m :make<CR>
nmap <leader>q :q<CR>
nmap <leader><S-q> :q<CR> :Gedit<CR>
nmap <leader><space> :call whitespace#strip_trailing()<CR>
nmap <leader>d :GitGutterToggle<CR>
nmap <leader><S-d> :GitGutterDisable<CR>:Gdiff<CR>zR
nmap <F8> :TagbarToggle<CR>
map <Leader>c ggVG"*y
map <Leader>e :e <C-R>=expand("%:p:h") . '/'<CR>
map <Leader>v :vnew <C-R>=expand("%:p:h") . '/'<CR>
map <leader>r :source ~/.config/nvim/init.vim<CR>:set wrap!<CR>
map <leader>z :NeoSnippetEdit<CR>
map <leader>t :tabnew<CR>
map <leader>p :Tags<CR>
map <leader>rl :w<Bar>execute 'silent !tmux send-keys -t bottom :r ENTER'<CR>
map <leader>rm :w<Bar>execute 'silent !tmux send-keys -t bottom :main ENTER'<CR>

map <leader>T :terminal<CR>

" Buffers
map gb :bp<CR>
map gB :bn<CR>
map <Leader>b :buffers<CR>
map <Leader>B :Buffers<CR>

" Turbo log
function! s:console_log() abort
  let l:word = expand('<cword>')
  execute 'norm!oconsole.log(''CL - '.l:word.''', '.l:word.');'
  silent! call repeat#set("\<Plug>(JsConsoleLog)")
endfunction

nnoremap <silent>(JsConsoleLog) :<C-u>call <sid>console_log()<CR>
nmap <Leader>cl (JsConsoleLog)
