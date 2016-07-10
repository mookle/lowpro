" General settings
set nocompatible " no old school vi support
set nobackup	 " don't backup edited buffers
set noswapfile	 " don't create a swap file
set autoread     " reload externally edited files
set visualbell 	 " silence beeps
set noerrorbells " silence beeps
set t_Co=256

" Windows / buffers
set hidden     " hide buffers rather than require they are saved or discarded
set splitbelow " open horizontal splits below the current file
set splitright " open vertical splits to the right of the current file

" Searching
"set hlsearch  " highlight search terms
set incsearch  " show search matches as they are typed
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
filetype plugin indent on
set shiftwidth=4  " number of spaces to use when indenting in CMD mode
set shiftround    " round to the closest mulitple of shiftwidth in CMD mode
set expandtab     " convert tabs to spaces in INSERT mode
set softtabstop=4 " number of columns a tab uses

" Visual settings
syntax on " enable syntax highlighting
" Syntax highlighting for Twig
autocmd BufRead,BufNewFile *.twig set filetype=htmljinja

" ========== Plugins ===========

" CtrlP
let g:ctrlp_custom_ignore = {
    \ 'dir':  '\v[\/](\.git|tmp|cache|log|vendor|target|report)$',
    \ 'file': '\v\.(so|swp|zip|log)$'
    \ }
let g:ctrlp_working_path_mode = 'a'   " use the directory of the current file
let g:ctrlp_clear_cache_on_exit= 1     " maintain cache between vim sessions
let g:ctrlp_open_multiple_files = 'i' " open multiple files as hidden buffers
let g:ctrlp_mruf_max = 15             " limit the number of recently-used files CtrlP should remember
let g:ctrlp_user_command = ['.git/', 'cd %s && git ls-files --exclude-standard -co'] " faster indexing

" Vim Markdown
let g:vim_markdown_folding_disabled=1 " disable folding

" PHP syntax
let g:php_ignore_phpdoc=1

" Syntastic
let g:syntastic_scala_checkers = []
let g:syntastic_enable_balloons = 0
let g:syntastic_auto_loc_list = 0
let g:syntastic_auto_jump = 1

" Airline
let g:airline_theme='powerlineish'
let g:airline_section_c = '%F' " display full filepath
set laststatus=2 " always visible
set ttimeoutlen=10 " reduce lag when leaving insert mode

" Clojure Static
let g:clojure_align_multiline_strings = 1

" ========== Vundle ==========

" Vundle init
set nocompatible " required
filetype off " required
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Vundle itself
Plugin 'gmarik/Vundle.vim' " required
" Restores Focus(Lost|Gained) when using iTerm & tmux
Plugin 'sjl/vitality.vim'
" CtrlP (fuzzy file-finder)
Plugin 'kien/ctrlp.vim'
" Display git diff notation in the gutter
Plugin 'airblade/vim-gitgutter'
" File renaming (saveas and delete old)
Plugin 'vim-scripts/Rename'
" Multiline editing
Plugin 'terryma/vim-multiple-cursors'
" Better status line
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
" Syntax checking
Plugin 'scrooloose/syntastic'
" Syntax highlighting
Plugin 'estin/htmljinja'
Plugin 'godlygeek/tabular' " required by plasticboy/vim-markdown
Plugin 'plasticboy/vim-markdown'
Plugin 'leshill/vim-json'
Plugin 'StanAngeloff/php.vim'
Plugin 'derekwyatt/vim-scala'
Plugin 'rust-lang/rust.vim'
" Clojure integration
Plugin 'guns/vim-clojure-static'
Plugin 'tpope/vim-fireplace'
Plugin 'venantius/vim-cljfmt'
Plugin 'guns/vim-sexp'
Plugin 'tpope/vim-sexp-mappings-for-regular-people'
" Colorschemes
Plugin 'vim-scripts/devbox-dark-256'
Plugin 'mookle/autobot.vim'
Plugin 'mookle/decepticon.vim'

" Vundle clean-up
call vundle#end()
filetype plugin indent on " re-enable now that Vundle is done

" Set default colourscheme
colorscheme autobot
