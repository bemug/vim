""""""""""""""
"bemug's vimrc
""""""""""""""
"Made with love <3

"Remove compatibility
set nocp

"coloration
syn on
filetype indent plugin on
syntax enable

"Indentation
set smartindent
set noexpandtab
set tabstop=4
set shiftwidth=4

"Line number
set nu

"Enable mouse (I'm low)
set mouse=a

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
set  wildmenu    "affiche le menu
set  wildmode =list:longest,list:full    "affiche toutes les possibilités
set  wildignore =*.o,*.r,*.so,*.sl,*.tar,*.tgz    "ignorer certains types de fichiers pour la complétion des includes

" Set to auto read when a file is changed from the outside
set autoread

"Always show current position
set ruler

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" Always show the status line
set laststatus=2

" Format the status line
set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l

" Set 7 lines to the cursor - when moving vertically using j/k
set so=5

"Stop acting dumb when pasting
nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>
set showmode

map <F3> :!sqlplus bemug/qsdqsd46544q@ensioracle1 @'%:p'<CR>

"Gummy vitamins
colorscheme vitamins 

"Helpers
" Returns true if paste mode is enabled
function! HasPaste()
	if &paste
		return 'PASTE MODE  '
	en
	return ''
endfunction

