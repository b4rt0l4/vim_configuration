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
Plugin 'klen/python-mode'
Plugin 'kien/ctrlp.vim'


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


" Automatic reloading of .vimrc
autocmd! bufwritepost .vimrc source %

" Better copy & paste
" When you want to paste large blocks of code into vim, press F2 before you
" paste. At the bottom you should see ``-- INSERT (paste) --``.
set pastetoggle=<F2>
set clipboard=unnamed

" Mouse and backspace
"" set mouse=a " on OSX press ALT and click
"" set bs=2 " make backspace behave like normal again


" Encoding UTF8
set encoding=utf-8
scriptencoding utf-8


" Rebind <Leader> key
" I like to have it here becuase it is easier to reach than the default and
" it is next to ``m`` and ``n`` which I use for navigating between tabs.
let mapleader = ","


" Bind nohl
" Removes highlight of your last search
" ``<C>`` stands for ``CTRL`` and therefore ``<C-n>`` stands for ``CTRL+n``
"" noremap <C-n> :nohl<CR>
"" vnoremap <C-n> :nohl<CR>
"" inoremap <C-n> :nohl<CR>


" Quicksave command
"" noremap <C-Z> :update<CR>
"" vnoremap <C-Z> <C-C>:update<CR>
"" inoremap <C-Z> <C-O>:update<CR>


" Quick quit command
"" noremap <Leader>e :quit<CR> " Quit current window
"" noremap <Leader>E :qa!<CR> " Quit all windows


" bind Ctrl+<movement> keys to move around the windows, instead of using Ctrl+w + <movement>
" Every unnecessary keystroke that can be saved is good for your health :)
"" map <c-j> <c-w>j
"" map <c-k> <c-w>k
"" map <c-l> <c-w>l
"" map <c-h> <c-w>h

" easier moving between tabs
"" map <Leader>n <esc>:tabprevious<CR>
"" map <Leader>m <esc>:tabnext<CR>

" map sort function to a key
"" vnoremap <Leader>s :sort<CR>


" easier moving of code blocks
" Try to go into visual mode (v), thenselect several lines of code here and
" then press ``>`` several times.
"" vnoremap < <gv " better indentation
"" vnoremap > >gv " better indentation


" Show whitespace
" MUST be inserted BEFORE the colorscheme command
"" autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
"" au InsertLeave * match ExtraWhitespace /\s\+$/


" Color scheme
" mkdir -p ~/.vim/colors && cd ~/.vim/colors
" wget -O wombat256mod.vim http://www.vim.org/scripts/download_script.php?src_id=13400
"" set t_Co=256
"" color wombat256mod


" Enable syntax highlighting
" You need to reload this file for the change to apply
"" filetype off
"" filetype plugin indent on
"" syntax on


" Showing line numbers and length
"" set number " show line numbers
"" set tw=79 " width of document (used by gd)
"" set nowrap " don't automatically wrap on load
"" set fo-=t " don't automatically wrap text when typing
"" set colorcolumn=80
"" highlight ColorColumn ctermbg=233


" easier formatting of paragraphs
"" vmap Q gq
"" nmap Q gqap


" Useful settings
set history=700
set undolevels=700


" Real programmers don't use TABs but spaces
set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround
set expandtab



" Make search case insensitive
set hlsearch
set incsearch
set ignorecase
set smartcase


" Disable stupid backup and swap files - they trigger too many events
" for file system watchers
"" set nobackup
"" set nowritebackup
"" set noswapfile


" ============================================================================
" Python IDE Setup
" ============================================================================
" Settings for vim-airline
" cd ~/.vim/bundle
" git clone git://github.com/bling/vim-airline.git
set laststatus=2
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1


" Settings for ctrlp
" cd ~/.vim/bundle
" git clone https://github.com/kien/ctrlp.vim.git
let g:ctrlp_max_height = 30
set wildignore+=*.pyc
set wildignore+=*_build/*
set wildignore+=*/coverage/*


" Settings for jedi-vim
" cd ~/.vim/bundle
" git clone git://github.com/davidhalter/jedi-vim.git
let g:jedi#usages_command = "<leader>z"
let g:jedi#popup_on_dot = 1
let g:jedi#popup_select_first = 0
map <Leader>b Oimport ipdb; ipdb.set_trace() # BREAKPOINT<C-c>


" Settings for pydiction
let g:pydiction_location = '~/.vim/bundle/pydiction/complete-dict'



"" Settings for python-mode
" Python-mode
" Activate rope
" Keys:
" K             Show python docs
" <Ctrl-Space>  Rope autocomplete
" <Ctrl-c>g     Rope goto definition
" <Ctrl-c>d     Rope show documentation
" <Ctrl-c>f     Rope find occurrences
" <Leader>b     Set, unset breakpoint (g:pymode_breakpoint enabled)
" [[            Jump on previous class or function (normal, visual, operator modes)
" ]]            Jump on next class or function (normal, visual, operator modes)
" [M            Jump on previous class or method (normal, visual, operator modes)
" ]M            Jump on next class or method (normal, visual, operator modes)
let g:pymode_rope = 0
let g:pymode_folding = 0






" Better navigating through omnicomplete option list
" See http://stackoverflow.com/questions/2170023/how-to-map-keys-for-popup-menu-in-vim
"" set completeopt=longest,menuone
"" function! OmniPopup(action)
"" if pumvisible()
"" if a:action == 'j'
"" return "\<C-N>"
"" elseif a:action == 'k'
"" return "\<C-P>"
"" endif
"" endif
"" return a:action
"" endfunction


"" inoremap <silent><C-j> <C-R>=OmniPopup('j')<CR>
"" inoremap <silent><C-k> <C-R>=OmniPopup('k')<CR>


" Python folding
" mkdir -p ~/.vim/ftplugin
" wget -O ~/.vim/ftplugin/python_editing.vim http://www.vim.org/scripts/download_script.php?src_id=5492
"" set nofoldenable


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



" Mostrar el paréntesis opuesto
set showmatch


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


