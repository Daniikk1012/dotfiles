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
autocmd FileType xml setlocal ts=2 sts=2 sw=2
autocmd FileType yaml setlocal ts=2 sts=2 sw=2

" Tab indent

autocmd FileType make setlocal noexpandtab

" Auto indent

filetype indent on
set autoindent
set smartindent

" Wrapped line movement

noremap j gj
noremap k gk

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

" 100 character line

autocmd FileType java setlocal cc=101
autocmd FileType rust setlocal cc=101

" Remove 80 character line in netrw

autocmd FileType netrw setlocal cc=

" Add relative numbers

set number
set relativenumber

" Vim-coc extensions

packadd coc.nvim

let g:coc_global_extensions=[
    \ 'coc-java',
    \ 'coc-rust-analyzer',
    \ 'coc-toml',
    \ 'coc-tsserver',
    \ 'coc-json',
    \ 'coc-jedi',
    \ 'coc-clangd',
    \ 'coc-lua',
\ ]

" Configure mouse cursor

set mouse=a

" Coc bindings

inoremap <expr> <C-X> coc#pum#visible() ? coc#pum#confirm() : "\<C-X>"

noremap [c <Plug>(coc-diagnostic-prev)
noremap ]c <Plug>(coc-diagnostic-next)

noremap <leader>r <Plug>(coc-rename)
noremap <leader>f <Plug>(coc-format)
