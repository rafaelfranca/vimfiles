" Removing boring toolbar (We don't like you, get out. NOW!)
set guioptions-=T

" Removing scrollbars (GTFO, bitch.)
set guioptions-=L
set guioptions-=r

" GUI Font config
set guifont=Monaco:h16

" Transparency on MacVim window
set transparency=5

" Key mapping for textmate-like indentation
nmap <D-[> <<
nmap <D-]> >>
vmap <D-[> <gv
vmap <D-]> >gv

let g:gist_clip_command = 'pbcopy'
