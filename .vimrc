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
"   Minimal .vimrc
"   It is what it is
" 

filetype indent plugin on
set encoding=utf-8
scriptencoding utf-8

" You might have to force true color when using regular vim inside tmux as the
" colorscheme can appear to be grayscale with "termguicolors" option enabled.
if !has('gui_running') && &term =~ '^\%(screen\|tmux\)'
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
endif

syntax on
set termguicolors
set cursorline

let g:mapleader = "\<Space>"

" << PLUGINS >>

call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdcommenter'                                     " Easy commenting
Plug 'tpope/vim-surround'                                           " Operations around surrounding
Plug 'airblade/vim-gitgutter'                                       " Track git changes
Plug 'jgdavey/tslime.vim', { 'for': 'python' }                                           " Slime-like sending for tmux
Plug 'preservim/nerdtree'
Plug 'tpope/vim-fugitive'

" enable popupopen
set completeopt=noinsert,menuone,noselect

" Language Support
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'vim-python/python-syntax', { 'for': 'python' }
Plug 'psf/black', { 'branch': 'stable', 'for': 'python' }
Plug 'rust-lang/rust.vim'

" colors
" Plug 'kadekillary/subtle_solo'
Plug 'arcticicestudio/nord-vim'

call plug#end()
"

" << STATUSLINE >>

set laststatus=2
set statusline=
set statusline+=%F
set statusline+=\ %m
set statusline+=%=
set statusline+=%{fugitive#statusline()}
"

" << NERD COMMENTER >>

let g:NERDSpaceDelims=1
let g:NERDTrimTrailingWhitespace=1
"

" << GO >>

let g:go_def_mode='gopls'
let g:go_info_mode='gopls'

let g:go_term_enabled=1

let g:go_highlight_fields=1
let g:go_highlight_structs=1
let g:go_highlight_variable_assignments=1
let g:go_highlight_types=1
let g:go_highlight_extra_types=1
let g:go_highlight_operators=1
let g:go_highlight_functions=1
let g:go_highlight_function_arguments=1
let g:go_highlight_function_calls=1
let g:go_fmt_command='goimports'

augroup GoOpts
    autocmd!
    autocmd BufNewFile,BufRead *.go setlocal noexpandtab tabstop=4 shiftwidth=4
    autocmd FileType go nmap <leader>i <Plug>(go-imports)
    autocmd FileType go nmap <leader>b <Plug>(go-build)
    autocmd FileType go nmap <leader>r <Plug>(go-run)
    autocmd FileType go nmap <leader>t <Plug>(go-test)
augroup END
"

" << SLIME >>

let g:tslime_always_current_session=1
let g:tslime_always_current_window=1

vmap + <Plug>SendSelectionToTmux<CR>
nmap + <Plug>NormalModeSendToTmux
"

" << TEMPLATES >>

augroup FileTemplates
    autocmd!
    autocmd BufNewFile *.py 0r ~/.vim/templates/py.skeleton
    autocmd BufNewFile *.sol 0r ~/.vim/templates/sol.skeleton
augroup END
"


" << PYTHON >>

" run currrent python file buffer
nnoremap <leader>r :w !python3<CR>

augroup PythonFMT
    autocmd!
    autocmd BufWritePre *.py execute ':Black'
augroup END

" vim-python/python-syntax
let g:python_highlight_builtins=1
let g:python_highlight_builtin_objs=1
let g:python_highlight_builtin_funcs=1
let g:python_highlight_builtin_funcs_kwarg=1
let g:python_highlight_exceptions=1
let g:python_highlight_string_formatting=1
let g:python_highlight_string_format=1
let g:python_highlight_string_templates=1
let g:python_highlight_indent_errors=1
let g:python_highlight_space_errors=1
let g:python_highlight_doctests=1
let g:python_highlight_class_vars=1
let g:python_highlight_operators=1
let g:python_highlight_file_headers_as_comments=1
"

" << RUST >> 

let g:rustfmt_autosave = 1
let g:rust_clip_command = 'pbcopy'
"

" << NETRW >>
let g:netrw_liststyle = 3
let g:netrw_banner = 0
let g:netrw_browse_split = 1
let g:netrw_winsize = 20
let g:netrw_altv = 1

" << CORE SETTINGS >>
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

" << BACKUPS >>
set noswapfile
set nobackup
set nowritebackup

" << INDENTATION >>
set autoindent
set tabstop=4
set shiftwidth=4
set expandtab
set wrap

" << SEARCH >>
set incsearch
set hlsearch
set ignorecase
set smartcase

" << FILETYPE >>

augroup FileOptions
  autocmd!
  " indentation
  " (for comments moving to BOL): https://stackoverflow.com/questions/2063175/comments-go-to-start-of-line-in-the-insert-mode-in-vim
  autocmd Filetype python setlocal sts=4 sw=4 wrap
  " autocmd Filetype r setlocal ts=2 sw=2 sts=2 expandtab
  autocmd Filetype r setlocal ts=2 sw=2
  autocmd Filetype markdown setlocal spell textwidth=72
  autocmd Filetype gitcommit setlocal spell textwidth=72
  autocmd Filetype javascript setlocal ts=2 sw=2 sts=2 syntax=javascript
  " https://calebthompson.io/crontab-and-vim-sitting-in-a-tree
  autocmd Filetype crontab setlocal nobackup nowritebackup
augroup END
"

" << KEY MAPPINGS >>

nnoremap <leader>s :%s/
nnoremap <silent> <BS> :nohlsearch<CR>
nnoremap <leader>w :w!<CR>
nnoremap <leader>q :q!<CR>
nnoremap <leader>bb :ls<CR>:b<Space>
nnoremap <leader>bc :bd<CR>
nnoremap <C-k> :bn<CR>
nnoremap <C-j> :bp<CR>

" << COLORSCHEMES >>
"
colorscheme nord
set background=dark

" for -> base vim themes
" hi CursorLine cterm=None
" hi CursorColumn cterm=None
" hi CursorLineNr cterm=None guifg=green
" hi LineNr guifg=white
"
