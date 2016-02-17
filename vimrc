set hidden
set history=100
set number
let mapleader=","

noremap <leader><leader> <c-^>

let NERDTreeMapActivateNode='<right>'
let NERDTreeShowHidden=1

set colorcolumn=90
color codeschool

autocmd BufWritePre *.* :%s/\s\+$//e

set guifont=Menlo\ Regular:h18

set lines=80 columns=180

map <D-A-RIGHT> <C-w>l
map <D-A-LEFT> <C-w>h
map <D-A-DOWN> <C-w><C-w>
map <D-A-UP> <C-w>W
