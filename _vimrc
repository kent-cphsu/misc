
set enc=utf-8
set fileencodings=utf-8,big5,gbk,latin1
language messages zh_TW.UTF-8

"set guifont=CPMono_v07_Plain:h12:cANSI
set guifont=DejaVu_Sans_Mono_for_Powerline:h14:cANSI
colorscheme desert

set nocompatible

" Setting up Vundle - the vim plugin bundler
let iCanHazVundle=1
let vundle_readme=expand('.vim/bundle/Vundle.vim/README.md')
if !filereadable(vundle_readme)
    echo "Installing Vundle..."
    echo ""
    silent !mkdir -p .vim/bundle
    silent !git clone https://github.com/gmarik/Vundle.vim.git .vim/bundle/Vundle.vim
    let iCanHazVundle=0
endif

filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
"Plugin 'Lokaltog/vim-powerline'
Plugin 'bling/vim-airline'
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

"let g:Powerline_symbols = 'fancy'
set laststatus=2
set t_Co=256
set laststatus=2
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#leftsep=' '
let g:airline#extensions#tabline#left_alt_sep='|'
let g:airline_powerline_fonts=1

set nobackup
set incsearch
set hlsearch
set cursorline
set nu
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set showtabline=2

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

