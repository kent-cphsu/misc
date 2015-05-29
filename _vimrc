
set enc=utf-8
set fileencodings=utf-8,big5,gbk,latin1
language messages zh_TW.UTF-8

set nocompatible

" Setting up Vundle - the vim plugin bundler
let iCanHazVundle=1
let vundle_readme=expand('~/.vim/bundle/vundle.vim/README.md')
if !filereadable(vundle_readme)
    echo "Installing Vundle..."
    echo ""
    silent !mkdir -p ~/.vim/bundle
    silent !git clone https://github.com/gmarik/vundle.vim ~/.vim/bundle/vundle.vim
    let iCanHazVundle=0
endif

filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'Lokaltog/vim-powerline'
Plugin 'c9s/colorselector.vim'
Plugin 'msanders/snipmate.vim'
Plugin 'ap/vim-css-color'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
"Plugin 'kien/ctrlp.vim'
Plugin 'vim-scripts/L9'
Plugin 'vim-scripts/FuzzyFinder'
Plugin 'vim-scripts/taglist.vim'

call vundle#end()
filetype plugin indent on

let g:Powerline_symbols = 'fancy'
set laststatus=2

set nobackup
set incsearch
set hlsearch
set nu
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4

syntax on

" when scrolling, keep cursor 3 lines away from screen border
set scrolloff=3

"let Tlist_Ctags_Cmd = 'C:\ctags.exe'
nnoremap <F12> :TlistToggle<CR>

" tab navigation mappings
map tn :tabn<CR>
map tp :tabp<CR>
map tm :tabm 
map tt :tabnew 
map ts :tab split<CR>
map <C-S-Right> :tabn<CR>
imap <C-S-Right> <ESC>:tabn<CR>
map <C-S-Left> :tabp<CR>
imap <C-S-Left> <ESC>:tabp<CR>

" navigate windows with meta+arrows
map <M-Right> <c-w>l
map <M-Left> <c-w>h
map <M-Up> <c-w>k
map <M-Down> <c-w>j
imap <M-Right> <ESC><c-w>l
imap <M-Left> <ESC><c-w>h
imap <M-Up> <ESC><c-w>k
imap <M-Down> <ESC><c-w>j
