set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/nerdtree'

" Add all your plugins here (note older versions of Vundle used Bundle instead of Plugin)


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

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

" useful tweaks
set number
set cursorline
set nowrap
set autoindent
set colorcolumn=80

" Enable Markdown syntax highlighting for *.md files
au BufRead,BufNewFile *.md set filetype=markdown

" jk to leave insert mode
inoremap jk <ESC>

" Nerdtree
map <C-n> :NERDTreeToggle<CR>

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

