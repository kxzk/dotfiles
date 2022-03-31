"    .o oOOOOOOOo                                            0OOOo
"    Ob.OOOOOOOo  OOOo.      oOOo.                      .adOOOOOOO
"    OboO000000000000.OOo. .oOOOOOo.    OOOo.oOOOOOo..0000000000OO
"    OOP.oOOOOOOOOOOO 0POOOOOOOOOOOo.   `0OOOOOOOOOP,OOOOOOOOOOOB'
"    `O'OOOO'     `OOOOo"OOOOOOOOOOO` .adOOOOOOOOO"oOOO'    `OOOOo
"    .OOOO'            `OOOOOOOOOOOOOOOOOOOOOOOOOO'            `OO
"    OOOOO                 '"OOOOOOOOOOOOOOOO"`                oOO
"   oOOOOOba.                .adOOOOOOOOOOba               .adOOOOo.
"  oOOOOOOOOOOOOOba.    .adOOOOOOOOOO@^OOOOOOOba.     .adOOOOOOOOOOOO
"  OOOOOOOOOOOOOOOOO.OOOOOOOOOOOOOO"`  '"OOOOOOOOOOOOO.OOOOOOOOOOOOOO
"    :            .oO%OOOOOOOOOOo.OOOOOO.oOOOOOOOOOOOO?         .
"    Y           'OOOOOOOOOOOOOO: .oOOo. :OOOOOOOOOOO?'         :`
"    .            oOOP"%OOOOOOOOoOOOOOOO?oOOOOO?OOOO"OOo
"                 '%o  OOOO"%OOOO%"%OOOOO"OOOOOO"OOO':
"                      `$"  `OOOO' `O"Y ' `OOOO'  o             .
"    .                  .     OP"          : o     .
"


" << STARTERS >>

filetype indent plugin on
set encoding=utf-8
scriptencoding utf-8

if !exists('g:syntax_on')
  syntax enable
endif

if (has("termguicolors"))
  set termguicolors
endif

let g:mapleader="\<Space>"
set cursorline          " show cursorline
set colorcolumn=80
"

" << PLUGINS >>

call plug#begin('~/.local/share/nvim/plugged')

Plug 'w0rp/ale'                                                     " Async Linting
Plug 'scrooloose/nerdcommenter'                                     " Easy commenting
Plug 'tpope/vim-surround'                                           " Operations around surrounding
Plug 'python-mode/python-mode', { 'for': 'python', 'branch': 'develop' }
Plug 'airblade/vim-gitgutter'                                       " Track git changes
Plug 'Yggdroot/indentline'                                          " Visual indent lines
Plug 'jgdavey/tslime.vim', { 'for': 'python' }                                           " Slime-like sending for tmux
Plug 'preservim/nerdtree'
Plug 'tpope/vim-fugitive'
Plug 'Glench/Vim-Jinja2-Syntax', { 'for': 'html' }
Plug 'alvan/vim-closetag', { 'for': 'html' }

" COC
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" enable popupopen
set completeopt=noinsert,menuone,noselect

" Language Support
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'Shougo/neco-vim', { 'for': 'vim' }
Plug 'vim-python/python-syntax', { 'for': 'python' }
Plug 'psf/black', { 'for': 'python', 'tag': '19.10b0' }
Plug 'plasticboy/vim-markdown', { 'for': 'markdown' }
" Plug 'neovimhaskell/haskell-vim'


call plug#end()
"

" << COLORSCHEMES >>
set background=dark

colorscheme subtle_dark
"


" << STATUSLINE >>

set laststatus=2
set statusline=
set statusline+=%1*\ %F
set statusline+=\ %m
set statusline+=%=
set statusline+=%{fugitive#statusline()}

hi User1 guifg=#ffffff guibg=#073642
"

" << NETRW >>

let g:netrw_liststyle=3                                        " Tree style
let g:netrw_banner=0                                           " No banner
let g:netrw_browse_split=1
let g:netrw_winsize=20
let g:netrw_altv=1
"


" << NERD COMMENTER >>

let g:NERDSpaceDelims=1
let g:NERDTrimTrailingWhitespace=1
"


" << INDENT LINE >>

let g:indentLine_char='¦'
let g:indentLine_color_gui='#073642'
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

" << HASKELL >>
let g:haskell_enable_quantification=1   " to enable highlighting of `forall`
let g:haskell_enable_recursivedo=1      " to enable highlighting of `mdo` and `rec`
let g:haskell_enable_arrowsyntax=1      " to enable highlighting of `proc`
let g:haskell_enable_pattern_synonyms=1 " to enable highlighting of `pattern`
let g:haskell_enable_typeroles=1        " to enable highlighting of type roles
let g:haskell_enable_static_pointers=1  " to enable highlighting of `static`
let g:haskell_backpack=1                " to enable highlighting of backpack keywords
"

" << RUST >>

let g:rustc_path='/Users/Kade.Killary/.cargo/bin/rustc'
let g:rustfmt_autosave=1
"

" << SLIME >>

let g:tslime_always_current_session=1
let g:tslime_always_current_window=1

vmap + <Plug>SendSelectionToTmux<CR>
nmap + <Plug>NormalModeSendToTmux
"


" << PYTHON >>

let g:black_virtualenv='/usr/local/bin/'

augroup PythonFMT
    autocmd!
    autocmd BufWritePre *.py execute ':Black'
augroup END

" Sort imports
command! -nargs=0 Isort :call CocAction('runCommand', 'python.sortImports')

let g:python_host_prog='/usr/local/bin/python'
let g:python3_host_prog='/usr/local/opt/python@3.8/bin/python3'

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

" pymode
let g:pymode_python= 'python3'
let g:pymode_trim_whitespaces=1
let g:pymode_indent=1                     " PEP-8 compatible indent
let g:pymode_options_colorcolumn=0
let g:pymode_lint=0
let g:pymode_lint_on_write=1
let g:pymode_rope=0
let g:pymode_rope_complete_on_dot=0
let g:pymode_virtualenv=1
"

" << NERDTREE >>

let g:NerdTreeCascadeSingleChildDir = 0
let g:NERDTreeShowLineNumbers = 1
let g:NERDTreeWinPos = 'left'
let g:NERDTreeShowBookmarks = 1
map <leader>nt :NERDTreeToggle<CR>
"

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


" << ALE >>

let g:ale_enabled=1
let g:ale_sign_error='✖︎'
highlight ALEErrorSign guifg=red ctermfg=red
let g:ale_sign_warning='✔︎'
highlight ALEWarningSign guifg=grey ctermfg=grey
let g:ale_echo_msg_error_str='E'
let g:ale_echo_msg_warning_str='W'
let g:ale_echo_msg_format='[%linter%] %s [%severity%]'
let g:move_key_modifier='N'
let g:ale_lint_on_text_changed='never'
let g:ale_lint_on_save=1
"


" << FOLDING >>

augroup Folding
  autocmd!
  autocmd BufRead * setlocal foldmethod=marker    " using   fold method
  autocmd BufRead * normal zM
augroup END
"


" << BASICS >>

if exists('&inccommand')
    set inccommand=split " (neovim) specific, live substitutin preview
endif

" Keep the bottom clean / clear
set noruler             " turn off line, column numbers
set noshowmode          " don't show current mode
set noshowcmd           " don't show command

" Always go right
set splitright

" set nowrap              " don't wrap lines
set spell spelllang=en_us " turn on spell checking
set history=100         " lines of history VIM remembers
set autochdir           " change working directory to current file
set cmdheight=1         " height of command bar
set smarttab
set tabstop=4           " tab is four spaces
set softtabstop=4       " tab removed like spaces
set shiftwidth=4        "  number of spaces for autoindenting
set expandtab           " spaces instead of tab characters
set shiftround
set autoindent
set autochdir           " change current dir to file in viewed buffer
set scrolloff=5         " lines after/before cursor on scroll
set breakindent         " long lines will wrap with indentation
set showbreak=\\\\\     " wrap lines with indentation
set backspace=indent,eol,start " allow backspacing in insert mode
set infercase           " smarter completions that will be case aware
set smartcase           " ignore case if search pattern all lowercase
set autowrite           " save on buffer switch
set showmatch           " highlight matching [{()}]
set incsearch           " search characters as enetered
set hlsearch            " highlight matches
set foldenable          " enable folding
set mouse=a             " enable mouse
set hidden              " buffers exist without windows
set number              " show line number
set relativenumber      " show relative line number set nobackup            " take care of backup files
set nobackup
set nowritebackup         " no backup files
set noswapfile          " no swap files
set lazyredraw          " redraw onlw when needed
set fillchars+=vert:\   " get rid of vert split '|' character
set updatetime=300      " Longer updatetime leads to noticeable delays/lag
set t_ZH=[3m          " For getting italics to work - must be entered with <ctrl-v><esc>
set t_ZR=[23m
"


" << TEMPLATES >>

augroup FileTemplates
    autocmd!
    autocmd BufNewFile *.sh 0r ~/.config/nvim/templates/sh.skeleton
    autocmd BufNewFile *.py 0r ~/.config/nvim/templates/py.skeleton
    autocmd BufNewFile *.sql 0r ~/.config/nvim/templates/sql.skeleton
augroup END
"

" << COC >>
"
" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
if has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif

" Use tab for trigger completion with characters ahead and navigate.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current
" position. Coc only does snippet and additional edit on confirm.
" <cr> could be remapped by other vim plugin, try `:verbose imap <CR>`.
if exists('*complete_info')
  inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
else
  inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
endif

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" Show commands
nnoremap <silent><nowait> <leader>c :<C-u>CocList commands<cr>

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> H :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')
"


" << KEY MAPPINGS >>

" markdown - no conceal
let g:vim_markdown_conceal=0

" markdown - no folding
let g:vim_markdown_folding_disabled=1

" quick subtitutions
nnoremap <leader>s :%s/

" Remove search highlighting
nnoremap <silent> <BS> :nohlsearch<CR>

" fast saves
nnoremap <leader>w :w!<CR>

" exit quickly
nnoremap <leader>q :q<CR>

" escaping various modes
if has ('nvim')
    " get out of terminal with same
    " window movement key bindings
    tnoremap jk		<C-\><C-n><CR>
    tnoremap <C-[>  <C-\><C-n><CR>
    tnoremap <C-W>h <C-\><C-n><C-w>h<CR>
    tnoremap <C-W>j <C-\><C-n><C-w>j<CR>
    tnoremap <C-W>k <C-\><C-n><C-w>k<CR>
    tnoremap <C-W>l <C-\><C-n><C-w>l<CR>
endif

" list all current buffers
nnoremap <leader>bb :ls<CR>:b<Space>
" close buffer
nnoremap <leader>bc :bd<CR>
" move to next buffer
nnoremap <leader>bn :bn<CR>
" previous buffer
nnoremap <leader>bp :bp<CR>

" automatic resized windows
augroup on_vim_resized
    autocmd!
    autocmd VimResized * wincmd =
augroup END

" execute shell commands in buffer
nnoremap Q !!$SHELL <CR>

" init.vim editing
map <leader>- :e $HOME/.config/nvim/init.vim<CR>

" todo list editing
map <leader>t :e $HOME/todo.md<CR>

" source init.vim
map <silent> <F1> :source $HOME/.config/nvim/init.vim<CR>
