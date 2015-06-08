execute pathogen#infect()
filetype plugin on
filetype plugin indent on
set nocompatible
syntax on
set hidden
set wildmenu
set showcmd
set ignorecase
set smartcase
set backspace=indent,eol,start
set autoindent
set ruler
set cmdheight=2
set ts=2
set sw=2
set expandtab
set invpaste
set history=1000         " remember more commands and search history
set undolevels=1000      " use many muchos levels of undo
set wildignore=*.swp,*.bak,*.pyc,*.class
set title                " change the terminal's title
set noerrorbells         " don't beep
set nobackup
set noswapfile
set modeline
map <C-n> :NERDTreeToggle<CR>
nmap <silent> ,/ :nohlsearch<CR>
let g:solarized_termcolors=256 
let g:solarized_termtrans=1 
colorscheme solarized
set background=dark
