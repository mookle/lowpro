" Plugin management
runtime vundle.vim

" General settings
set nobackup	 " don't backup edited buffers
set noswapfile	 " don't create a swap file
set visualbell 	 " silence beeps
set noerrorbells " silence beeps
set t_Co=256

" Windows / buffers
set hidden     " hide buffers rather than require they are saved or discarded
set splitbelow " open horizontal splits below the current file
set splitright " open vertical splits to the right of the current file

" Searching
set nohlsearch " don't highlight search terms
set ignorecase " ignore case when searching
set smartcase  " make searches case-sensitive when uppercase is used

" Editing
set number       " enable line numbers
set cursorline   " highlight the current line
set ruler        " display the cursor position in STATUS bar
set showcmd      " show partial commands in the STATUS bar
set textwidth=0  " don't wrap
set wrapmargin=0 " don't wrap
set scrolloff=12 " number of lines to display either side of the current
set backspace=indent,eol,start " fix backspace

" Indentation
set shiftwidth=4  " number of spaces to use when indenting in CMD mode
set shiftround    " round to the closest mulitple of shiftwidth in CMD mode
set expandtab     " convert tabs to spaces in INSERT mode
set softtabstop=4 " number of columns a tab uses

" Visual settings
syntax on " enable syntax highlighting
autocmd BufRead,BufNewFile *.twig set filetype=htmljinja " syntax highlighting for Twig
colorscheme autobot
