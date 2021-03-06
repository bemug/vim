""""""""""""""
"bemug's vimrc
""""""""""""""
"Made with love <3

"VUNDLE
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" own stuff
Plugin 'kien/ctrlp.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'bling/vim-airline'
Plugin 'ciaranm/detectindent'
Plugin 'chriskempson/vim-tomorrow-theme'
Plugin 'LaTeX-Box-Team/LaTeX-Box'
Plugin 'scrooloose/syntastic'
Plugin 'majutsushi/tagbar'
Plugin 'tpope/vim-fugitive'
Plugin 'bogado/file-line'
Plugin 'mrtazz/DoxygenToolkit.vim'
Plugin 'will133/vim-dirdiff'

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
"END VUNDLE

"coloration
syn on
filetype indent plugin on
syntax enable
filetype plugin on
set omnifunc=syntaxcomplete#Complete

"Indentation
set smartindent
set noexpandtab
set tabstop=4
set shiftwidth=4

"Swap files in their own directory
set directory=$HOME/.vim/swapfiles//

"Line number
set nu

"Highlight matching brackets
set showmatch

"Incremental reseach (Firefox like)
set incsearch

" Highlight search results
set hlsearch

"Case
set  ignorecase
set  smartcase

"Auto completion
set  wildmode =list:longest,list:full    "affiche toutes les possibilités
set  wildignore =*.o,*.r,*.so,*.sl,*.tar,*.tgz    "ignorer certains types de fichiers pour la complétion des includes

" Set to auto read when a file is changed from the outside
set autoread

"Always show current position
set ruler
"
"Always show status bar
set laststatus=2

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" Set 7 lines to the cursor - when moving vertically using j/k
set so=5

"Highlight 81 column (oldschool style)
set textwidth=80
set colorcolumn=+1

"Stop acting dumb when pasting
nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>
set showmode

map <F3> :!sqlplus bemug/qsdqsd46544q@ensioracle1 @'%:p'<CR>

map <F4> :set spell!<CR><Bar>:echo "Spell Check: " . strpart("OffOn", 3 * &spell, 3)<CR>

"TabBar shortcut
nmap <F8> :TagbarToggle<CR>

"Omnicompletion
if !has("gui_running")
    inoremap <C-@> <C-x><C-o>
endif

"Gvim options
set guioptions-=m  "remove menu bar
set guioptions-=T  "remove toolbar
set guioptions-=r  "remove right-hand scroll bar

"Colors
colorscheme Tomorrow-Night-Bright

"Helpers
" Returns true if paste mode is enabled
function! HasPaste()
	if &paste
		return 'PASTE MODE  '
	en
	return ''
endfunction

"whitespaces and tabs
set list listchars=tab:→\ ,trail:·

"Let me open how many I want
set tabpagemax=100

"ctrlp only in cur dir
let g:ctrlp_working_path_mode = 0

"c++11
let g:syntastic_cpp_compiler_options = ' -std=c++11'

"power line fonts
let g:airline_powerline_fonts = 1

"relative line numbers
"set relativenumber

"Look for tags, and iterate in parents dir untill found
"set tags=./tags;/
set tags=./tags,tags;$HOME

"Mouse support
set mouse=a

" Don't show seperators
let g:airline_left_sep=''
let g:airline_right_sep=''

" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1

" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'

"Escape using jj
inoremap jj <Esc>

"Highligh cursor line
set cursorline

"Access system clipboard
set clipboard=unnamedplus

" Ruby is an oddball in the family, use special spacing/rules
if v:version >= 703
  " Note: Relative number is quite slow with Ruby, so is cursorline
  autocmd FileType ruby setlocal nocursorline
else
  autocmd FileType ruby setlocal
endif
