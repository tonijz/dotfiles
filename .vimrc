" Plugins
call plug#begin()
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'arcticicestudio/nord-vim'
Plug 'vim-airline/vim-airline'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-surround'
call plug#end()

" enable syntax highlighting
syntax enable

" show line numbers
set number

" show a visual line under the cursor's current line
set cursorline

" don't wrap lines
set nowrap

" show the matching part of the pair for [] {} and ()
set showmatch

" set tabs to have 4 spaces
set ts=4

" indent when moving to the next line while writing code
set autoindent

" expand tabs into spaces
set expandtab

" set colorscheme
colorscheme nord

" use truecolors
set termguicolors

" setting gui font
set guifont=Monaco:h14

" make jj do esc"
inoremap jj <Esc>

" make esc do nothing"
inoremap <Esc> <Nop>

" exit terminal mode
tnoremap <Esc> <C-\><C-n>

" allow to search straight after typing /
set incsearch

" no backups
set nobackup

" no swap files
set noswapfile

" Install Powerline fonts
" go to iTerm2 → Preferences → Profiles → Text → Change Font
" Change to Meslo LG M for Powerline
" use powerline fonts for airline
let g:airline_powerline_fonts = 1

" enable all Python syntax highlighting features
let python_highlight_all = 1

" enable deoplete at startup
let g:deoplete#enable_at_startup = 1

" Toggle NERDTree
map <C-n> :NERDTreeToggle<CR>
