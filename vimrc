" Don't try to be crappy compatible with Vi. It's 2012.
set nocompatible

" pathogen.vim is so awesome you can even bundle it.
runtime bundle/pathogen/autoload/pathogen.vim

" If you don't know what pathogen.vim is then you really need to check it out.
call pathogen#infect()
call pathogen#helptags()

" Enable syntax highlighter.
syntax on

" Indentation.
filetype plugin indent on

" And plugins too.
filetype plugin plugin on

" Load my personal settings.
runtime settings/commands.vim
runtime settings/options.vim
runtime settings/statusline.vim
runtime settings/plugins.vim

" and my personal mappings.
runtime mappings/ctrl.vim
runtime mappings/keys.vim
runtime mappings/leader.vim
runtime mappings/normal.vim
runtime mappings/visual.vim

" highlight rspec keywords properly https://gist.github.com/64635
autocmd BufRead *_spec.rb syn keyword rubyRspec describe context it specify it_should_behave_like before after setup subject its shared_examples_for shared_context let
highlight def link rubyRspec Function

" :help last-position-jump
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"zz" | endif

" Load colorscheme and fix it a bit.
colorscheme molokai
hi Comment guifg=SkyBlue
hi Visual term=reverse cterm=reverse gui=reverse guifg=#66D9EF guibg=#000000
