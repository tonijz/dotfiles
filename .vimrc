set nocompatible               " be iMproved
filetype off 

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
Bundle 'gmarik/vundle'
Bundle 'scrooloose/nerdtree'
Bundle 'msanders/snipmate.vim'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-fugitive'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'klen/python-mode'
Bundle 'https://github.com/aaronbieber/quicktask.git'
Bundle 'chreekat/vim-paren-crosshairs'

filetype plugin indent on

set encoding=utf-8
set fileencoding=utf-8

colorscheme wombat 
set guifont=Monaco\ 9 

syntax on
set cursorcolumn              " set cursor column
set cursorline                " show current line
set nowrap                    " set nowrap
set ruler                     " show the line number on the bar
set autoread                  " watch for file changes
set number                    " line numbers
set hidden
set noautowrite               " don't automagically write on :next
set showmode
set showcmd
set nocompatible              " vim, not vi
set autoindent smartindent    " auto/smart indent
set smarttab                  " tab and backspace are smart
set guioptions=               " remove gui options 

" Set tabs at 4 spaces
set tabstop=4
set shiftwidth=4

"set scrolloff=5               " keep at least 5 lines above/below
"set expandtab
set linebreak
set cmdheight=2               " command line two lines high
set undolevels=1000           " 1000 undos
set noerrorbells              " No error bells please

set hlsearch                  " highlight searchs
set ignorecase                " Do case insensitive matching
set smartcase                 " except when using capital letters

filetype on                   " Enable filetype detection
filetype indent on            " Enable filetype-specific indenting
filetype plugin indent on

"highlight NonText guifg=gray
"highlight SpecialKey guifg=#7D7D7D

set listchars=tab:\|\
highlight SpecialKey ctermfg=7 guifg=#4C4947
set list!

highlight CursorLine term=underline  guibg=#333333  cterm=underline
highlight CursorColumn term=underline  guibg=#333333  cterm=underline

"set columns=80
"set colorcolumn=+1 " 80 columns: highlight column after 'textwidth', a red line.
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/

" toggle list mode
nmap <LocalLeader>tl :set list!<cr>
" toggle paste mode
nmap <LocalLeader>pp :set paste!<cr>

" disabling arrow keys
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>
nnoremap j gj
nnoremap k gk

" Disabling help
inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>

" paste mode
set nopaste " Start in normal (non-paste) mode
set pastetoggle=<F2>
nnoremap <F2> :set invpaste paste?<CR>

" setting backup dir
set backupdir=~/tmp
