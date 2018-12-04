" The original configuration https://github.com/araujobd/dotfiles/blob/master/vimrc
" arthurgorgonio@ufrn.edu.br, copy in: 2017 Ago 30

""""""""""""""""""""""""""""""""""""""""
"        Vim Configuration File        "
"     Maintainer: Arthur Gorgonio      "
"       Last Change: 2018 Oct 09       "
""""""""""""""""""""""""""""""""""""""""

""" COLORS CODE
" I choose these colors to customize the rainbow parentheses plugin. These
" colors are ordened by xterm code. The follow lines represent a list of the
" colors than I use.
" Code color in xterm - the name of the color - the code in rgb
" 000 -   Black    - #000000
" 009 -    Red     - #FF0000
" 010 -   Green    - #00FF00
" 011 -   Yellow   - #FFFF00
" 013 -  Fuchsia   - #FF00FF
" 014 -    Aqua    - #00FFFF
" 022 - DarkGreen  - #005F00
" 202 - OrangeRed1 - #FF5F00
"
" The follow links were used to choose the colors and the icon in the configuration
" color: https://jonasjacek.github.io/colors/
""" git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

set nocompatible  " be iMproved, required
filetype off      " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim' "Pluguin manager

" Plugins
Plugin 'vim-airline/vim-airline' " Airline
Plugin 'vim-airline/vim-airline-themes' " Airline themes
Plugin 'scrooloose/nerdtree' " Nerd Tree
Plugin 'majutsushi/tagbar'
Plugin 'tpope/vim-fugitive'
Plugin 'luochen1990/rainbow' " Rainbow match
Plugin 'w0rp/ale' " Systax check
Plugin 'jalvesaq/Nvim-R' " Programming language R suport and sortcuts
Plugin 'maralla/completor.vim' " Suggests words
Plugin 'davidhalter/jedi-vim' " Jedi Pluguin

" Color schemes
Plugin 'MidnaPeach/neonwave.vim'
Plugin 'ArthurGorgonio/vim-themes-improved'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required


" Plugins configurations
" ALE
let g:ale_fix_on_save = 1
let g:ale_linters = {'python': ['flake8', 'pylint']}
let g:ale_fixers = {
    \ 'python': [
    \   'add_blank_lines_for_python_control_statements',
    \   'autopep8',
    \   'black',
    \   'isort',
    \   'remove_trailing_lines',
    \   'trim_whitespace',
    \   'yapf'
    \ ]
    \}

" Rainbow Parenteses
"'parentheses': ['start=/(/ end=/)/ fold'
" the word fold indicates that (), [], and {} are colored individually by the
"   sectioned sequence
let g:rainbow_active = 1 "0 if you want to enable it later via :RainbowToggle
let g:rainbow_conf = {
      \   'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick'],
      \   'ctermfgs': [9, 10, 11, 12, 13, 14, 22, 202],
      \   'operators': '_,_',
      \   'parentheses': ['start=/(/ end=/)/ fold', 'start=/\[/ end=/\]/ fold',
      \       'start=/{/ end=/}/ fold'],
      \   'separately': {
      \     '*': {},
      \     'tex': {
      \       'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/',
      \           'start=/\{\ end=/\}\ '],
      \     },
      \     'lisp': {
      \       'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick',
      \           'darkorchid3'],
      \     },
      \     'vim': {
      \       'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/',
      \           'start=/{/ end=/}/ fold',
      \           'start=/(/ end=/)/ containedin=vimFuncBody',
      \           'start=/\[/ end=/\]/ containedin=vimFuncBody',
      \           'start=/{/ end=/}/ fold containedin=vimFuncBody'],
      \     },
      \  }
      \}
" Airline
let g:airline#extensions#tabline#enabled=1
let g:airline_powerline_fonts=1
let g:airline_theme='wombat'

" NerdTree Configuration
" Give a shortcut key to NERD Tree
map <F2> :NERDTreeToggle<CR>
let g:NERDTreeChDirMode=2

" Tagbar
nmap <F8> :TagbarToggle<CR>

syntax on

" Basic configurations
let python_highlight_all=1
set autoindent
set clipboard=unnamed
set colorcolumn=80
set cursorline
set encoding=utf8
set expandtab
set hlsearch
set ignorecase
set incsearch
set laststatus=2
set noshowmode
set noswapfile
set number
set ruler
set shiftwidth=2
set showbreak=···
set showcmd
set showtabline=2
set smartcase
set smartindent
set smarttab
set softtabstop=2
set t_Co=256
set undolevels=1000

" Setting color scheme
colorscheme calm-theme

" Some macros
let @e='i $WxExEa$'
let @w='2l@e'
let @t='$A \\ \cline{2-9}w'
let @r="0@e6@w@t"
let @y='5@r)))j'

" Remaping commands
nnoremap <Tab> :bnext<CR>
nnoremap <S-Tab> :bprevious<CR>
