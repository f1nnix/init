set guifont=Menlo:h16
set number
set cursorline
set clipboard=unnamed
set nowrap

set encoding=UTF-8

filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required Plugin 'VundleVim/Vundle.vim' Plugin 'morhetz/gruvbox' Plugin 'rakr/vim-two-firewatch'

Plugin 'Yggdroot/indentLine'

Plugin 'scrooloose/nerdtree'

Plugin 'kien/ctrlp.vim'
" 
" Plugin 'mhinz/vim-startify'

Plugin 'davidhalter/jedi-vim' 

Plugin 'junegunn/goyo.vim'

Plugin 'vim-airline/vim-airline'

Plugin 'nightsense/snow'

Plugin 'lepture/vim-jinja'

Plugin 'dyng/ctrlsf.vim'

Plugin 'maksimr/vim-jsbeautify'

Plugin 'pangloss/vim-javascript'

Plugin 'mxw/vim-jsx'

Plugin 'autozimu/LanguageClient-neovim'

Plugin 'acarapetis/vim-colors-github'

" Plugin 'ryanoasis/vim-devicons'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" color two-firewatch
color snow
set background=light " or light if you prefer the light version
" let g:two_firewatch_italics=1


" let g:airline_theme='twofirewatch' " if you have Airline installed and want the associated theme

map <C-n> :NERDTreeToggle<CR>

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

let NERDTreeIgnore = ['__pycache__', '.pytest_cache/', '.DS_Store']

" autocmd VimEnter *
"             \   if !argc()
"             \ |   Startify
"             \ |   NERDTree
"             \ |   wincmd w
"             \ | endif


if bufwinnr(1)
    map + 10<C-W>+
    map - 10<C-W>-
    map , 10<C-W><
    map . 10<C-W>>
    map = 10<C-W>=
endif

" Required for operations modifying multiple buffers like rename.
set hidden

let g:LanguageClient_serverCommands = {
    \ 'python': ['/Users/user/.venv/rmatics-back-admin/bin/python'],
    \ }

" let g:python3_host_prog = '/Users/user/.venv/magplan/bin/python'
let g:python3_host_prog = '/Users/user/.venv/rmatics-back-admin/bin/python'


nnoremap <F5> :call LanguageClient_contextMenu()<CR>
let g:LanguageClient_loggingFile = '/tmp/lc.log'
