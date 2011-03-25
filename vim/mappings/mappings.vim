map " ci"
cmap w!! w !sudo tee % >/dev/null

if has('gui_running')
    " Make shift-insert work like in Xterm
    map <S-Insert> <MiddleMouse>
    map! <S-Insert> <MiddleMouse>
endif

" sane regex
nnoremap / /\v
vnoremap / /\v

"Do not lost block selection after indentation. Such a good thing!
vmap > >gv
vmap < <gv

" Zen time
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>

source ~/.vim/mappings/ctrl.vim
source ~/.vim/mappings/function-keys.vim
source ~/.vim/mappings/leader.vim
