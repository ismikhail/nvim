" Better nav for omnicomplete
inoremap <expr> <c-j> ("\<C-n>")
inoremap <expr> <c-k> ("\<C-p>")

" Use space + hjkl to resize windows
nnoremap <space>k    :resize -2<CR>
nnoremap <space>j    :resize +2<CR>
nnoremap <space>l    :vertical resize -2<CR>
nnoremap <space>h    :vertical resize +2<CR>

" TAB in general mode will move to text buffer
nnoremap <TAB> :bnext<CR>
" SHIFT-TAB will go back
nnoremap <S-TAB> :bprevious<CR>

" Alternate way to save
nnoremap <C-s> :w<CR>
" Alternate way to quit
nnoremap <C-Q> :wq!<CR>
" Use control-c instead of escape
" <TAB>: completion.
" inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"

" Better tabbing
vnoremap < <gv
vnoremap > >gv

" Better window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" toggle comments
nnoremap <space>/ :Commentary<CR>
vnoremap <space>/ :Commentary<CR>

" toggle file tree
nmap <space>t :NERDTreeToggle<CR>

" which key
nnoremap <silent> <leader> :WhichKey '<Space>'<CR>
set timeoutlen=500

" quit
nnoremap <space>q :qa<CR>

" delete current buffer
nnoremap <space>d :bd<CR>
