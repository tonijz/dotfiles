filetype off 

set rtp+=~/.vim/bundle/vundle/
call vundle#begin()

" let Vundle manage Vundle
Plugin 'VundleVim/Vundle.vim'
Plugin 'NLKNguyen/papercolor-theme'
Plugin 'groenewege/vim-less'
Plugin 'mattn/emmet-vim'

Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-vinegar'

Plugin 'msanders/snipmate.vim'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-fugitive'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'nvie/vim-flake8'
Plugin 'davidhalter/jedi-vim'
Plugin 'chreekat/vim-paren-crosshairs'

" airline
Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

Plugin 'tpope/vim-classpath'
Plugin 'flazz/vim-colorschemes'
Plugin 'airblade/vim-gitgutter'

Plugin 'stephpy/vim-php-cs-fixer'
Plugin 'terryma/vim-multiple-cursors'


Plugin 'jwalton512/vim-blade'

Plugin 'rking/ag.vim'
Plugin 'kien/ctrlp.vim'

call vundle#end()                            " required
filetype plugin indent on                    " required
