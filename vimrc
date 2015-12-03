" Necessary on some Linux distros for pathogen to properly load bundles
filetype off

" Load all Pathogen Bundles
call pathogen#infect()

" Set vim-specific functions available, breaking compatibility with vi
set nocompatible

" Line Number
set number
set colorcolumn=120
set synmaxcol=200

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

" Allow backgrounding buffers without writing them, and remember marks/undo
" for backgrounded buffers
set hidden
set switchbuf=useopen

" Store temporary files in a central spot
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp

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
source ~/.vim/keymaps.vim

" Loading macvim config
if has("gui_mac") || has("gui_macvim")
  source ~/.vim/macvim.vim
endif

" Removing trailing spaces from ruby files (by @bbcoimbra)
function! RemoveTraillingSpaces()
  let cursor_pos = getpos(".")
  %s/[ \t]*$//g
  call setpos(".", cursor_pos)
endfunction

function! CustomFoldText()
  let foldsize = (v:foldend-v:foldstart)
  return getline(v:foldstart).' ('.foldsize.' lines)'
endfunction
setlocal foldtext=CustomFoldText()

source ~/.vim/plugins.vim
