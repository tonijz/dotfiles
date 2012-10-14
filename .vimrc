colorscheme zenburn
set guifont=Monaco\ 10

syntax on
set nowrap                    " set nowrap
set ruler                     " show the line number on the bar
set autoread                  " watch for file changes
set number                    " line numbers
set hidden
set noautowrite               " don't automagically write on :next
"set lazyredraw                " don't redraw when don't have to
set showmode
set showcmd
set nocompatible              " vim, not vi
set autoindent smartindent    " auto/smart indent
set smarttab                  " tab and backspace are smart
set guioptions-=T             "remove toolbar

" Set tabs at 4 spaces
set tabstop=4
set shiftwidth=4

"set scrolloff=5               " keep at least 5 lines above/below
"set expandtab
set linebreak
set cmdheight=2               " command line two lines high
set undolevels=1000           " 1000 undos
set noerrorbells              " No error bells please
filetype on                   " Enable filetype detection
filetype indent on            " Enable filetype-specific indenting
filetype plugin indent on

" clojure
" g:vimclojure#HighlightBuiltins
" g:vimclojure#ParenRainbow
let vimclojure#FuzzyIndent = 1

" mappings
" toggle list mode
nmap <LocalLeader>tl :set list!<cr>
" toggle paste mode
nmap <LocalLeader>pp :set paste!<cr>

" setting backup dir
set backupdir=~/tmp
