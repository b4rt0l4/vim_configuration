set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'yegappan/mru'
Plugin 'flazz/vim-colorschemes'
Plugin 'mivok/vimtodo'
Plugin 'tpope/vim-fugitive'
Plugin 'bling/vim-airline'
Plugin 'scrooloose/nerdtree'
Plugin 'davidhalter/jedi-vim'
Plugin 'rkulla/pydiction'


" All of your Plugins must be added before the following line
call vundle#end() " required
filetype plugin indent on " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList - lists configured plugins
" :PluginInstall - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

set shell=/bin/bash
syntax on
"Configuración de vim-airline
set laststatus=2
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

"Configuración de Nerdtree
" Abrir automaticamente NERDTree al iniciar
"autocmd vimenter * NERDTree
" Abrir automaticamente NERDTree al iniciar si no se especifico algun archivo
"autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" Mapeado NERDTreeToggle con F8
map <F8> :NERDTreeToggle<CR>
"ignore some file types
let g:NERDTreeIgnore=[
\'\.pyc$', '\.pyo$', '\.py\$class$', '\.obj$',
\'\.o$', '\.so$', '\.egg$', '^\.git$', '^\.svn$',
\'\.FxCop$','\.scc$','\.vssscc$','\.ini$', '\.pol$',
\'\.user$', '\.cd$', '\.Cache$', '\.mdf$', '\.ldf$',
\'\.tmp$', '^NTUSER.DAT*', '\.zip$', '\.pdb$', '\.dll$',
\'tags', 'bin', 'obj', '\.suo$', '\.vspscc$', '\.*\~']

"jedi
let g:jedi#popup_on_dot = 1

"pydiction
let g:pydiction_location = '~/.vim/bundle/pydiction/complete-dict'

" Cuantas lineas del historial VIM debe recordar
set history=500

" Se establece en automático leer cuando se modifica un archivo desde el exterior
set autowrite

" Mostrar numero de linea
set number
set numberwidth=1 " usa sólo una columna y un espacio cuando sea posible
set title " Muestra el título en la barra de título de la consola
set pastetoggle=<F3> " Press F3 for toggle paste mode
set cursorline " Resalta la linea donde se encuentra el cursor
set colorcolumn=81 " Marca la columna 81 con una línea resaltada
let &colorcolumn=join(range(81,999),",")

" buscar nocase salvo que tenga mayúsculas
set ignorecase
set smartcase
set hlsearch
set incsearch

" Mostrar el paréntesis opuesto
set showmatch

" Encoding UTF8
set encoding=utf-8
scriptencoding utf-8
try
lang es
catch
endtry

" empezar a hacer scroll cuando nos acercamos estas líneas a los bordes
set scrolloff=5

" mostrar...
set showcmd " el comando
set showmode " muestra el modo

" muestra barra con completados de linea de comandos
set wildmenu

if has("gui_running")
colors molokai
else
colors molokai
endif

" Fuente. Debe estar instalada en el sistema
set gfn=DejaVu\ Sans\ Mono\ for\ Powerline\ 12

" activar raton
if has('mouse')
set mouse=a "activa el uso del ratón automáticamente"
set mousehide "oculta el ratón mientras se escribe"
set selectmode=mouse
set mousemodel=popup " right-click pops up context menu
endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set tabstop=4
set softtabstop=4
set shiftwidth=4
set textwidth=80
set smarttab
set expandtab
