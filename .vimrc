" For Pathogen <https://github.com/tpope/vim-pathogen> to load plugins
runtime bundle/pathogen/autoload/pathogen.vim
call pathogen#infect()

" We don't care about vi compatibility.
set nocompatible

" Always show the status line (current buffer path is nice to have)
set laststatus=2

" Turn syntax-highlight on
syntax enable

" syntastic setup, only check python
let g:syntastic_check_on_open=1  " 0 by default
let g:syntastic_mode_map = { 'mode': 'active', 'active_filetypes': ['python'], 'passive_filetypes': [] }

" Nice colorscheme that doesn't break your eyes or your brain
colorscheme mustang

" Show matching brackets
set showmatch

" Show cursor position at all times
set ruler

" Make search case-insensitive unless an uppercase letter is added
set ignorecase smartcase

" Set terminal colour output
set t_Co=256

" I like having line numbers on, but don't want to wrap lines in a
" standard-sized terminal window.
fun! WinSizeAutoNumber()
    if winwidth(0) > 84
        set number
    else
        set nonumber
    endif
endfunction

call WinSizeAutoNumber()
au VimResized * call WinSizeAutoNumber()

" http://vim.wikia.com/wiki/File_type_plugins#Setting_a_default_filetype
let g:do_filetype = 0
au BufWinEnter,BufAdd * if expand('<afile>') == "" | let g:do_filetype = 1 | endif
au BufEnter * if g:do_filetype | setf python | let g:do_filetype = 0 | endif

" Handle Kivy kv files
au BufRead,BufNewFile *.kv set filetype=python

" show search matches as-you-type
set incsearch hlsearch

" centre the screen to the currently highlighted search term
nmap n nzz
nmap N Nzz

" clear current search term
map <silent> <C-N> :let @/=""<CR>

" reselect visual block after indent/outdent
" http://vimbits.com/bits/20
vnoremap < <gv
vnoremap > >gv

" when vsp'litting open to the right of current buffer
set splitright splitbelow

" Show partial command sequence in status bar
set showcmd

" Disable Ex mode. Dvorak has its quirks 8-)
map Q <Nop>

" Source .vimrc automatically once written
autocmd! bufwritepost ~/.vimrc source %

" Ok, pathogen has loaded everything so restore file settings
syntax on
filetype plugin on

" pyflakes validation
let g:pyflakes_use_quickfix = 0

" MacVim options
if has("gui_running")
    set guioptions=egmht
    set guifont=Monaco:h12
    set antialias

    set number
endif

set autoindent
