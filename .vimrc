" Set 'nocompatible' to ward off unexpected things that your distro might
" have made, as well as sanely reset options when re-sourcing .vimrc
set nocompatible

" Switch off backups to *.*~ files
set nobackup

" Enable syntax highlighting and colorscheme
syntax on
colorscheme monokai

" Set tabstops size to 4
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

" auseful tweaks
set number
set cursorline
set nowrap
set autoindent

" Enable Markdown syntax highlighting for *.md files
au BufRead,BufNewFile *.md set filetype=markdown

" jk to leave insert mode
inoremap jk <ESC>
nmap oo o<Esc>
nmap OO O<Esc>

" highlight overlength
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/
