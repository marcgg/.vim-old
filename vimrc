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
set lines=45 columns=140
set colorcolumn=90
set number
syntax on
let g:gitgutter_sign_column_always=1

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
set wildignore+=*.log,*.sql,*.cache,vendor/*,tmp/*,app/assets/images*,public/*,_build/*,deps/*,node_modules/*
noremap <Leader>r :CommandTFlush<CR>

" RAILS
map <leader>a :AV<CR>

" ES6
au BufNewFile,BufRead *.es6 set filetype=javascript

" SWITCH SCHEME
map <Leader>l :colorscheme Tomorrow<CR>
map <Leader>k :colorscheme Tomorrow-Night<CR>
