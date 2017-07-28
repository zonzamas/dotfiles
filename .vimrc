set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'ervandew/supertab'
Plugin 'garbas/vim-snipmate'
Plugin 'gmarik/Vundle.vim'
Plugin 'godlygeek/tabular'
Plugin 'honza/vim-snippets'
Plugin 'kana/vim-textobj-user'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'nelstrom/vim-textobj-rubyblock'
Plugin 'rodjek/vim-puppet'
Plugin 'scrooloose/syntastic'
Plugin 'shmay/vim-yaml'
Plugin 'tomtom/tlib_vim'
Plugin 'tpope/vim-endwise'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-markdown'
Plugin 'tpope/vim-rails.git'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-surround'
Plugin 'vim-ruby/vim-ruby'
Plugin 'wincent/Command-T'
Plugin 'klen/python-mode'
Plugin 'scrooloose/nerdtree'
Plugin 'nelstrom/vim-visual-star-search'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

set tabstop=2 shiftwidth=2 expandtab
syntax enable
set autochdir

if exists(":Tabularize")
  nmap <leader>a= :Tabularize /=><CR>
  vmap <leader>a= :Tabularize /=><CR>
endif

map <C-n> :NERDTreeToggle<CR>

let g:pymode_folding = 0
let g:pymode_options_max_line_length = 120 
nnoremap <space> i<space><esc>

set list listchars=tab:..,trail:☠

set nowrap

set noswapfile

autocmd BufEnter * lcd %:p:h
