let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_custom_ignore = '.*node_modules.*'
let g:ctrlp_custom_ignore = '.*external-roles/.*'
let g:ctrlp_custom_ignore = '\v[\/]\.stack-work$'
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'

if executable('ag')
  set grepprg=ag\ --nogroup\ --nocolor
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
  let g:ctrlp_use_caching = 0
endif
