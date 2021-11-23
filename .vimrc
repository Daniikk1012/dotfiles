" Installed plugins:
"  - vim-coc

" Installed theme:
"  - Gruvbox (vim-gruvbox-community in AUR)

" Enable filetype detection

filetype on
filetype plugin on

" 4 space tab

set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4

" 2 space tab for web

autocmd FileType html setlocal ts=2 sts=2 sw=2
autocmd FileType javascript setlocal ts=2 sts=2 sw=2
autocmd FileType css setlocal ts=2 sts=2 sw=2
autocmd FileType json setlocal ts=2 sts=2 sw=2

" Tab indent

autocmd FileType make setlocal noexpandtab

" Auto indent

filetype indent on
set autoindent
set smartindent

" Wrapped line movement

map j gj
map k gk

" Syntax highlighting

syntax on
set background=dark
set termguicolors
let g:gruvbox_contrast_dark='hard'
colorscheme gruvbox

" Speed up
set timeout
set timeoutlen=1000
set ttimeoutlen=0

" Show command

set showcmd

" Assembly

let g:asmsyntax='nasm'

" Search

set incsearch

" 80 character line

set colorcolumn=81

" Remove 80 character line in netrw

autocmd FileType netrw setlocal cc=

" Vim-coc extensions

let g:coc_global_extensions=[
    \ 'coc-java',
    \ 'coc-rust-analyzer',
    \ 'coc-toml',
    \ 'coc-tsserver',
    \ 'coc-json',
    \ 'coc-jedi',
    \ 'coc-clangd',
\ ]

" Configure mouse cursor

set mouse=a

" Coc bindings

noremap [c :call CocAction('diagnosticPrevious')<cr>
noremap ]c :call CocAction('diagnosticNext')<cr>
