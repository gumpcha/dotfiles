set nocompatible               " be iMproved
filetype off                   " required!
filetype plugin indent on     " required!


syntax on
set hlsearch
set bg=dark
set expandtab
set ts=4
set laststatus=2
" for python auto indent
set shiftwidth=4


" command-t plugin(,t)
let mapleader=','   



map <Leader>nt <ESC>:NERDTree<CR>


au BufWritePost *.js :JSHint
au FileType javascript setl sw=2 sts=2 et
