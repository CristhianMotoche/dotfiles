" Only for HTML and CSS files
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall

" Redefine trigger key
let g:user_emmet_leader_key=','

let g:user_emmet_settings = {
  \  'javascript.jsx' : {
    \      'extends' : 'jsx',
    \  },
  \}
