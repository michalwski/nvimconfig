call plug#begin('~/.config/nvim/bundle')
Plug 'tpope/vim-sensible'
Plug 'vim-erlang/vim-erlang-compiler'
Plug 'vim-erlang/vim-erlang-runtime'
Plug 'vim-erlang/vim-erlang-tags'
Plug 'vim-erlang/vim-erlang-omnicomplete'
Plug 'edkolev/erlang-motions.vim'
Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-fugitive'
Plug 'ntpeters/vim-better-whitespace'
call plug#end()

filetype plugin indent on

set nofoldenable
set number
set relativenumber

autocmd BufEnter *.escript   if &filetype == '' | setlocal filetype=erlang | endif
autocmd BufEnter rebar.config*   if &filetype == '' | setlocal filetype=erlang | endif
autocmd BufEnter app.config,sys.config   if &filetype == '' | setlocal filetype=erlang | endif
autocmd BufEnter *.md        if &filetype == '' | setlocal filetype=markdown | endif

autocmd FileType erlang   setlocal foldmethod=syntax expandtab tabstop=4 shiftwidth=4 textwidth=0

autocmd BufWritePre * StripWhitespace

