" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'scrooloose/nerdtree'
Plugin 'jlanzarotta/bufexplorer'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-ragtag'
Plugin 'cfcosta/html5-vim-minimal'
Plugin 'tpope/vim-vividchalk'
Plugin 'Raimondi/delimitMate'
Plugin 'kana/vim-textobj-user'
Plugin 'nelstrom/vim-textobj-rubyblock'
Plugin 'mileszs/ack.vim'
Plugin 'ecomba/vim-ruby-refactoring'
Plugin 'godlygeek/tabular'
Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-repeat'
Plugin 'kchmck/vim-coffee-script'
Plugin 'rafaelfranca/rtf_pygmentize'
Plugin 'altercation/vim-colors-solarized'
Plugin 'tpope/vim-unimpaired'
Plugin 'mattn/emmet-vim'
Plugin 'bling/vim-airline'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'szw/vim-tags'
Plugin 'tpope/vim-dispatch'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'neomake/neomake'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
