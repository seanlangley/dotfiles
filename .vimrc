set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin '907th/vim-auto-save'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'preservim/nerdtree'
call vundle#end()            " required

filetype plugin indent on    " required
set number

set mouse=r
let NERDTreeShowHidden=1
nnoremap <C-l> :NERDTree<CR>


" Autosave
let g:auto_save = 1 
let g:auto_save_silent = 1 

set bg=dark
let mapleader=","
set tabstop=8
set expandtab
set shiftwidth=4
set hlsearch
set smartcase
set ignorecase
set incsearch
set smarttab
set softtabstop=4
set modelines=0
let g:stylus_higher_contrast_ui = 0
syntax on
colorscheme desert
let g:airline_theme = 'minimalist'

" This is what sets vim to use 24-bit colors. It will also work for any version of neovim
" newer than 0.1.4.
if has('termguicolors')
    set termguicolors
endif

augroup reload_vimrc " {
    autocmd!

    if !exists("*ReloadVimrc")
        function ReloadVimrc()
            source $MYVIMRC
            if exists("$MYGVIMRC")
                source $MYGVIMRC
            endif
        endfunction
    endif

    autocmd BufWritePost $MYVIMRC  call ReloadVimrc()
    if exists("$MYGVIMRC")
       autocmd BufWritePost $MYGVIMRC  call ReloadVimrc()
    endif
