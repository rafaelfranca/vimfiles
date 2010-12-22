" Make Y yank the rest of the line (like with C and D)
nnoremap Y y$

" Remove all trailing whitespace
nnoremap <silent> <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>:retab<CR>

" Moving Emacs-likey!
imap <C-f> <C-o>l
imap <C-b> <C-o>h
imap <C-n> <C-o>j
imap <C-p> <C-o>k
imap <C-a> <C-o>0
imap <C-e> <C-o>$

" Word substitution on insert mode
imap <C-w> <C-o>dw

" NERDTree!
nmap <silent> <C-e> :NERDTreeToggle<CR>

" BufferExplorer
nmap <silent> <C-b> :BufExplorer<CR>

" Key mapping for tab navigation
nmap <Tab> gt
nmap <S-Tab> gT

" Clearing search results
nmap <silent> <C-l> :nohl<CR>
