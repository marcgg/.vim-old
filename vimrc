" LOADING
execute pathogen#infect()

" LEADER
let mapleader=" "

" FILE TYPES
filetype on
filetype plugin on

" THEME & LAYOUT
colorscheme Tomorrow-Night
set guifont=Menlo\ Regular:h16
set lines=50 columns=160
set colorcolumn=90
set number
syntax on

" GIT GUTTER
if has("gui_macvim")
  set signcolumn=yes
endif
map <leader>gb :Gblame<CR>

" SEARCH
set hlsearch
nnoremap <silent> <Esc> :nohlsearch<Bar>:echo<CR>

" PERFORMANCES & HISTORY
set hidden
set history=100

" SWAP FILES
set shortmess+=A

" TEXT FORMATTING
filetype indent on
set nowrap
set tabstop=2
set shiftwidth=2
set expandtab
set smartindent
set autoindent
autocmd BufWritePre * :%s/\s\+$//e " Remove whitespaces on save

" ALE
let g:ale_lint_on_enter = 0
let g:ale_sign_error = '••'
let g:ale_sign_warning = '..'
let g:ale_linters = { 'javascript': ['eslint'], 'ruby': ['rubocop'] }
hi SignColumn ctermbg=black
hi ALEErrorSign ctermbg=black ctermfg=red
hi ALEWarningSign ctermbg=black ctermfg=red

" POPIN HELP
if has("gui_macvim")
  set noballooneval " Remove vim-ruby contextual popins that slow down everything
  let g:netrw_nobeval = 1
  let g:ale_set_balloons = 0
endif

" NERDTree
let NERDTreeMapActivateNode='<right>'
let NERDTreeShowHidden=1
nmap <leader>, :NERDTreeToggle<CR>
nmap <leader>j :NERDTreeFind<CR>
let NERDTreeIgnore=['\.DS_Store', '\~$', '\.git', '\.sass-cache', '\.swp', '\.swo']
if has("gui_macvim")
  autocmd VimEnter * NERDTree
  autocmd VimEnter * wincmd p
endif

" NAVIGATION
set showmatch
nnoremap <Leader><Leader> :e#<CR>

" USE ARROWS TO MOVE
map <D-A-RIGHT> <C-w>l
map <D-A-LEFT> <C-w>h
map <D-A-DOWN> <C-w><C-w>
map <D-A-UP> <C-w>W

" RELOAD VIMRC
map <leader>s :source ~/.vimrc<CR>

" CONTROL+T
"set wildignore+=*.log,*.sql,*.cache,vendor/*,tmp/*,app/assets/images*,public/*,_build/*,deps/*,node_modules/*
"noremap <Leader>r :CommandTFlush<CR>

"CTRLP
set runtimepath^=~/.vim/bundle/ctrlp.vim
map <leader>t :CtrlP<CR>
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*node_modules*
noremap <Leader>r :CtrlPClearCache<CR>

" RAILS
map <leader>a :AV<CR>

" ES6
au BufNewFile,BufRead *.es6 set filetype=javascript

" SWITCH SCHEME
map <Leader>l :colorscheme Tomorrow<CR>
map <Leader>k :colorscheme Tomorrow-Night<CR>
