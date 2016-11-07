" Vundle init, required
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

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
Plugin 'neomake/neomake'

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

" Vundle cleanup
call vundle#end()
filetype plugin indent on " re-enable now that Vundle is done
