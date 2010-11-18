" Set vim-specific functions available, breaking compatibility with vi
set nocompatible

" Line Number
set number

" Syntax highlighting options
syntax on
set t_Co=256

" Search Options
set incsearch
set hlsearch

" Line Wrapping options
set nowrap

" Disable visual bells
set visualbell t_vb=

" Statusline setup
set statusline=%f
set laststatus=2

" Indentation Settings
set sw=2
set sts=2
set expandtab
set autoindent


" Loading indent and plugins depending on the filetype
filetype plugin on
filetype indent on

" Folding Settings
set nofoldenable

" Command Line Completion
set wildmode=list:longest
set wildmenu
set wildignore=*.o,*.obj,*.swp,*~,#*#

" Display tabs and trailing spaces
set list
set listchars=tab:\ ¬,trail:.

" Enabling mouse
set mouse=a

" Abbreviations to keep me from going insane
iab lenght length
iab widht width
iab heigth height
cab W w
cab Q q
cab Wq wq
cab WQ wq
cab qw wq
cab X x

" Loading the other files from the repository
source ~/.vim/keymaps

" Load all Pathogen Bundles
call pathogen#runtime_append_all_bundles()

" Snipmate setup
source ~/.vim/snippets/support_functions.vim
