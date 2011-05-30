" Sourcing default configuration for all GUIs
source ~/.vim/gui.vim

" GUI Font config
set guifont=Monaco:h13

" Transparency on MacVim window
set transparency=5

" Key mapping for textmate-like indentation
nmap <D-[> <<
nmap <D-]> >>
vmap <D-[> <gv
vmap <D-]> >gv

" gist
let g:gist_clip_command = 'pbcopy'
let g:gist_detect_filetype = 1
let g:gist_open_browser_after_post = 1
