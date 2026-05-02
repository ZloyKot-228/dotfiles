let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin("~/.vim/plugins")

Plug 'bagrat/vim-buffet'
Plug 'tpope/vim-sensible'
Plug 'preservim/nerdtree'
Plug '907th/vim-auto-save'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'catppuccin/vim', { 'as': 'catppuccin' }
Plug 'gruvbox-community/gruvbox'
Plug 'jiangmiao/auto-pairs'

call plug#end()

" Colorscheme
set termguicolors
" colorscheme catppuccin_macchiato
" colorscheme gruvbox
colorscheme murphy

" Autosave
let g:auto_save = 1

" COCK
inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm() : "\<C-g>u\<CR>"

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Braces
let g:AutoPairsMapCR = 1
let g:AutoPairsMapSpace = 1

" Tree
let g:NERDTreeShowHidden = 1
