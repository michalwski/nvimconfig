call plug#begin('~/.config/nvim/bundle')
Plug 'tpope/vim-sensible'
Plug 'vim-erlang/vim-erlang-compiler'
Plug 'vim-erlang/vim-erlang-runtime'
Plug 'vim-erlang/vim-erlang-tags'
Plug 'vim-erlang/vim-erlang-omnicomplete'
Plug 'edkolev/erlang-motions.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-fugitive'
Plug 'ntpeters/vim-better-whitespace'
Plug 'airblade/vim-gitgutter'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'tpope/vim-commentary'
Plug 'mileszs/ack.vim'
Plug 'altercation/vim-colors-solarized'
Plug 'scrooloose/nerdtree'
call plug#end()

filetype plugin indent on

set nofoldenable "disable folding
set number "display line numbers
set relativenumber "display relative line numbers
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.beam "do not suggest this files in explore :e command
set background=dark "tells vim the background has dark color
set nowrap "do not wrap long lines
set title "set the window title
set colorcolumn=80

colorscheme solarized
let g:airline_theme = 'solarized'

"Erlang files
autocmd BufEnter *.escript   if &filetype == '' | setlocal filetype=erlang | endif
autocmd BufEnter rebar.config*   if &filetype == '' | setlocal filetype=erlang | endif
autocmd BufEnter app.config,sys.config   if &filetype == '' | setlocal filetype=erlang | endif

"use 4 spaces for tab in Erlang files
autocmd FileType erlang   setlocal foldmethod=syntax expandtab tabstop=4 shiftwidth=4 textwidth=0

"automatically remove trailing whitespace
autocmd BufWritePre * StripWhitespace

"change default gitgutter update time
set updatetime=1000

let g:ctrlp_custom_ignore = {
			\ 'dir':  '\v([\/]\.(git|hg|svn)$)|(Mnesia.*)',
			\ 'file': '\v\.(exe|so|dll)$',
			\ 'link': 'some_bad_symbolic_links',
			\ }

let g:NERDTreeIgnore = ['\~$','\.beam$']
let g:NERDTreeChDirMode = 2

