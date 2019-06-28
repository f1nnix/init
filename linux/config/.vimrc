set guifont=Monaco:h15
" remove delay after ESC
set timeoutlen=1000 ttimeoutlen=0

set mouse=a

set keymap=russian-jcukenmac
set iminsert=0
set imsearch=0
highlight lCursor guifg=NONE guibg=Cyan

set nowrap
set nocompatible              " be iMproved, required
filetype off                  " required

autocmd InsertLeave * write

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
" === global ===
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'junegunn/goyo.vim'
" Plugin 'Valloric/YouCompleteMe'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
" Plugin 'nathanaelkane/vim-indent-guides'
" let g:indent_guides_enable_on_vim_startup = 1
Plugin 'fweep/vim-tabber'
set tabline=%!tabber#TabLine()
" Plugin 'amoffat/snake'
Plugin 'tpope/vim-fugitive'
" --- sql
Plugin 'morhetz/gruvbox'
" Plugin 'antlypls/vim-colors-codeschool'
Plugin 'Align'
Plugin 'vim-scripts/SQLUtilities'
Plugin 'mpyatishev/vim-sqlformat'
" Plugin 'jistr/vim-nerdtree-tabs'
" Plugin 'mhinz/vim-startify'
Plugin 'junegunn/vim-easy-align'
" Plugin 'Yggdroot/indentLine'
" Plugin 'nathanaelkane/vim-indent-guides'
" --- html
Plugin 'mattn/emmet-vim'
" === js ===
" Plugin 'cakebaker/scss-syntax.vim'
" Plugin 'digitaltoad/vim-pug'
" Plugin 'wavded/vim-stylus'
" Plugin 'pangloss/vim-javascript'
" === ruby ===
" Plugin 'tpope/vim-haml'
Plugin 'tpope/vim-rails'
" === markdown ===
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
" Plugin 'iamcco/markdown-preview.vim'
Plugin 'JamshedVesuna/vim-markdown-preview'
" -- jinja2
Plugin 'Glench/Vim-Jinja2-Syntax'
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

" Some settings to enable the theme:
set number        " Show line numbers
set cursorline
syntax enable     " Use syntax highlighting

set background=dark
colorscheme gruvbox
" colorscheme codeschool
" colorscheme pencil
" highlight Normal ctermbg=NONE
" highlight nonText ctermbg=NONE

" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

" au VimEnter *  NERDTree
" autocmd VimEnter *
"                \   if !argc()
"                \ |   Startify
"                \ |   NERDTree
"                \ |   wincmd w
"                \ | endif
nmap <silent> <C-E> :NERDTreeToggle<CR>
" Hidden files should be shown by deafult
let NERDTreeShowHidden=1
" toogle NERDTree for ALL tabs
nmap <silent> <C-N> :NERDTreeTabsToggle<CR>

" au VimEnter * IndentGuidesEnable
" let g:indent_guides_auto_colors = 0
" let g:indent_guides_start_level = 2
" let g:indent_guides_guide_size = 1
" autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  ctermbg=black
" autocmd VimEnter,Colorscheme * :hi IndentGuidesEven ctermbg=darkgrey

" associate *.slim with haml filetype
au BufRead,BufNewFile *.slim setfiletype haml
" indent with |
let g:indentLine_char = '│'

" For indents that consist of 42 space characters but are entered with the tab key:
set tabstop=4 softtabstop=0 expandtab shiftwidth=2 smarttab

map <silent> <C-l> :vertical resize +5<CR>
map <silent> <C-h> :vertical resize -5<CR>
map <silent> <C-k> :resize +5<CR>
map <silent> <C-j> :resize -5<CR>

" enter distraction mode
map <silent> <C-g> :set wrap nolinebreak<CR><bar>:Goyo<CR><bar>:set background=light<CR>
" map <silent> <C-g> :NERDTreeTabsToggle<CR><bar>:set wrap nolinebreak<CR><bar>:Goyo<CR><bar>:set background=light<CR>

 "==========  Writing support ========== 
" autocmd FileType markdown :set background=light
" autocmd FileType markdown :set wrap linebreak nolist
" autocmd FileType markdown :Goyo
" autocmd FileType markdown :set spell spelllang=ru_ru


"folding settings
set foldmethod=indent   "fold based on indent
set foldnestmax=10      "deepest fold is 10 levels
" set nofoldenable        "dont fold by default
set foldlevel=0         "this is just what i use

" python-mode
let g:pymode_python = 'python3'
let g:pymode_virtualenv = 1

" vim-markdown-preview
let vim_markdown_preview_hotkey='<C-m>'
let vim_markdown_preview_toggle=1
let vim_markdown_preview_github=1
let vim_markdown_preview_browser='Google Chrome'


" if filereadable(expand("~/.vim/bundle/snake/plugin/snake.vim"))
"     source ~/.vim/bundle/snake/plugin/snake.vim
" endif
