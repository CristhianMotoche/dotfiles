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
"source ~/.config/nvim/config/lsp.vim
source ~/.config/nvim/config/whitespace.vim
source ~/.config/nvim/config/coc.vim



let g:coc_node_path = expand($ASDF_DATA_DIR . '/installs/nodejs/16.1.0/bin/node')
let g:ale_disable_lsp = 1
let g:ale_linters_ignore = {
\  "haskell": ["ghc_mod", "hie", "ghc", "cabal_ghc", "hdevtools"]
\}
let g:ale_fix_on_save = 1
let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'typescript': ['prettier'],
\   'haskell': ['stylish-haskell'],
\}

nmap <C-q> <cmd>Telescope live_grep<cr>
nnoremap <leader>b <cmd>Telescope buffers<cr>

lua<<EOF
require'hop'.setup()
require('mini.fuzzy').setup({})
require('mini.surround').setup({})
require('mini.completion').setup({
  mappings = {
    force_twostep  = '<C-Space>', -- Force two-step completion
    force_fallback = '<A-c>'  -- Force fallback completion
  }
})
require('telescope').setup {
  extensions = {
    fzf = {
      fuzzy = true,                    -- false will only do exact matching
      override_generic_sorter = true,  -- override the generic sorter
      override_file_sorter = true,     -- override the file sorter
      case_mode = "smart_case",        -- or "ignore_case" or "respect_case"
      }
    }
  }
-- To get fzf loaded and working with telescope, you need to call
-- load_extension, somewhere after setup function:
require('telescope').load_extension('fzf')
EOF
