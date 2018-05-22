"
"            ||||||||||||||
"           =              \       
"           =               |
"          _=            ___/
"         / _\           (o)\
"        | | \            _  \
"        | |/            (____)
"         \__/          /   |
"          /           /  ___)
"         /    \       \    _)                       )
"        \      \           /                       (
"      \/ \      \_________/   |\_________________,_ )
"       \/ \      /            |     ==== _______)__)
"        \/ \    /           __/___  ====_/
"         \/ \  /           (O____)\\_(_/
"                          (O_ ____)
"                           (O____)
"
"

" filetype indent plugin on
set encoding=utf-8
scriptencoding utf-8

" if !exists('g:syntax_on')
"     syntax enable
" endif

let g:mapleader = "\<Space>"

set cursorline

" Check for vim-plug
" If not there, get it
if empty(glob('~/.vim/autoload/plug.vim'))
      silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
          \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
        autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
    endif

call plug#begin('~/.vim/plugged')

Plug 'w0rp/ale'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'python-mode/python-mode'

call plug#end()

set background=light
colorscheme subtle_light

" NO STATUSLINE
set laststatus=0

" NETRW
let g:netrw_liststyle = 3
let g:netrw_banner = 0
let g:netrw_browse_split = 1
let g:netrw_winsize = 20
let g:netrw_altv = 1

" NERDTREE
let g:NERDSpaceDelims = 1
let g:NERDTrimTrailingWhitespace = 1
let g:NerdTreeCascadeSingleChildDir = 0
let g:NERDTreeShowLineNumbers = 1
let g:NERDTreeWinPos = 'left'
map <leader>nt :NERDTreeToggle<CR>

" CORE SETTINGS
set number
set relativenumber
set noruler
set noshowmode
set noshowcmd
set backspace=indent,eol,start
set history=100
set hidden
set wildmenu
set mouse=a
set scrolloff=3
set lazyredraw
set autowrite
set showmatch

" BACKUPS
set noswapfile
set nobackup
set nowritebackup

" INDENTATION
set autoindent
set tabstop=4
set shiftwidth=4
set expandtab
set nowrap

" SEARCH
set incsearch
set hlsearch
set ignorecase
set smartcase

" KEY MAPPINGS
nnoremap <leader>s :%s/
nnoremap <silent> <BS> :nohlsearch<CR>
nnoremap <leader>w :w!<CR>
nnoremap <leader>q :q!<CR>
nnoremap <leader>bb :ls<CR>:b<Space>
nnoremap <leader>bc :bd<CR>
nnoremap <C-k> :bn<CR>
nnoremap <C-j> :bp<CR>
