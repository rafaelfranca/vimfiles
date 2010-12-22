" GUI Font config
set guifont=Monaco:h14

" Removing boring toolbar (We don't like you, get out. NOW!)
set guioptions-=T

" Removing scrollbars (GTFO, bitch.)
set guioptions-=r

" Setting Mac Option-key to behave like Meta Key
set invmmta

" Key mapping for textmate-like indentation
nmap <D-[> <<
nmap <D-]> >>
vmap <D-[> <gv
vmap <D-]> >gv
