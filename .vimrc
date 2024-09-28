set ignorecase smartcase
set shiftwidth=4
set tabstop=4
set expandtab
set softtabstop=4
set shiftround
set textwidth=100
inoremap jj <Esc>
set number
set ruler		" show the cursor position all the time
set colorcolumn=80
"set cursorline

set incsearch

set showcmd		" display incomplete commands
if has('mouse')
  set mouse=a
endif
set nocompatible
set backspace=indent,eol,start


if &t_Co > 2 || has("gui_running")
  syntax on
  set hlsearch
  let &t_Co=256
endif


filetype plugin indent on
set autoindent
set guifont=Menlo:h13
set cindent
set cinkeys-=0#
set indentkeys-=0#

au BufNewFile,BufRead *.vert\|*.frag\|*.glsl set filetype=glsl

autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o


set lines=66 columns=166

call plug#begin('~/.vim/plugged')

Plug 'tomasiser/vim-code-dark'
Plug 'artanikin/vim-synthwave84'
Plug 'relastle/bluewery.vim'
Plug 'dense-analysis/ale'
Plug 'whatyouhide/vim-gotham'
Plug 'itchyny/lightline.vim'
"Plug 'Valloric/YouCompleteMe'
call plug#end()

augroup MyColorSchemeOverrides
    autocmd!
    autocmd ColorScheme * highlight Normal ctermbg=Black
augroup END

"colorscheme gotham
"colorscheme codedark 
colorscheme synthwave84
"colorscheme bluewery

"let g:lightline = { 'colorscheme': 'bluewery' }
