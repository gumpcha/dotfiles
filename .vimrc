set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" My Bundles here:
"
" original repos on github
Bundle "pangloss/vim-javascript"
Bundle 'jade.vim'
Bundle 'tpope/vim-fugitive'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
Bundle 'tpope/vim-rails.git'
" vim-scripts repos
Bundle 'L9'
Bundle 'FuzzyFinder'
" non github repos
Bundle 'git://git.wincent.com/command-t.git'
Bundle 'instant-markdown.vim'
Bundle 'git://github.com/plasticboy/vim-markdown.git'
Bundle 'jshint.vim'
Bundle 'Conque-Shell'
Bundle 'scrooloose/nerdtree'


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
