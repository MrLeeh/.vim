set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Add all your plugins here (note older versions of Vundle used Bundle instead of Plugin)
Plugin 'scrooloose/nerdtree'
Plugin 'tmhedberg/SimpylFold'
Plugin 'nvie/vim-flake8'
Plugin 'majutsushi/tagbar'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'tell-k/vim-autopep8'

" Plugin 'davidhalter/jedi-vim'
" Plugin 'scrooloose/syntastic'
" Plugin 'jistr/vim-nerdtree-tabs'
" Bundle 'klen/python-mode'
" Bundle 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
" Bundle 'Valloric/YouCompleteMe'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Switch off backups to *.*~ files
set nobackup

" Enable syntax highlighting and colorscheme
colorscheme monokai
" colorscheme dracula

" Set tabstops size to 4
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

" useful tweaks
set number
set cursorline
set nowrap
set colorcolumn=80
set noswapfile
set cm=blowfish2 

" Enable Markdown syntax highlighting for *.md files
au BufRead,BufNewFile *.md set filetype=markdown

" Nerdtree
map <C-n> :NERDTreeToggle<CR>

" SimpylFold
let g:SimpylFold_docstring_preview=1
autocmd BufWinEnter *.py setlocal foldexpr=SimpylFold(v:lnum) foldmethod=expr
autocmd BufWinLeave *.py setlocal foldexpr< foldmethod<

" Disable auto comment
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" Remaps
" ------
" jk to leave insert mode
inoremap jk <ESC>

" split settings
set splitbelow
set splitright

" switch buffers
nnoremap <Tab> :bn<CR>
nnoremap <S-Tab> :bp<CR>

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Allow saving of files as sudo when I forgot to start vim using sudo.
cmap w!! w !sudo tee > /dev/null %

" code folding
" ------------
set foldmethod=indent
set foldlevel=99
" Enable folding with the spacebar
nnoremap <space> za
" See docstrings for folded functions
let g:SimpylFold_docstring_preview=1

" Python Highlighting
let python_highlight_all=1
syntax on

" Expand on Space
nnoremap <space> za
nnoremap <space> za
nmap <F8> :TagbarToggle<CR>

" search settings
" ---------------
set ignorecase
set smartcase

" Add the virtualenv's site-packages to vim path
if has('python')
py << EOF
import os.path
import sys
if 'VIRTUAL_ENV' in os.environ:
    project_base_dir = os.environ['VIRTUAL_ENV']
    sys.path.insert(0, project_base_dir)
    activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
    execfile(activate_this, dict(__file__=activate_this))
EOF
endif
