" Specify a directory for plugins
call plug#begin('~/.vim/bundle')

Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'scrooloose/nerdtree'
Plug 'jlanzarotta/bufexplorer'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-ragtag'
Plug 'cfcosta/html5-vim-minimal'
Plug 'tpope/vim-vividchalk'
Plug 'Raimondi/delimitMate'
Plug 'kana/vim-textobj-user'
Plug 'nelstrom/vim-textobj-rubyblock'
Plug 'mileszs/ack.vim'
Plug 'ecomba/vim-ruby-refactoring'
Plug 'godlygeek/tabular'
Plug 'vim-ruby/vim-ruby'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-repeat'
Plug 'kchmck/vim-coffee-script'
Plug 'rafaelfranca/rtf_pygmentize'
Plug 'altercation/vim-colors-solarized'
Plug 'tpope/vim-unimpaired'
Plug 'mattn/emmet-vim'
Plug 'bling/vim-airline'
Plug '/usr/local/opt/fzf' | Plug 'junegunn/fzf.vim'
Plug 'szw/vim-tags'
Plug 'tpope/vim-dispatch'
Plug 'vim-airline/vim-airline-themes'
Plug 'neomake/neomake'
Plug 'SirVer/ultisnips'
Plug 'rafaelfranca/vim-snippets'
Plug 'tpope/vim-rhubarb'

" All of your Plugins must be added before the following line
call plug#end()
filetype plugin indent on    " required
