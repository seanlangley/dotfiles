set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line

Plugin '907th/vim-auto-save'
call vundle#end()            " required
filetype plugin indent on    " required
set number

set mouse=r


" Autosave
let g:auto_save = 1 
let g:auto_save_silent = 1 

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1 
let g:syntastic_auto_loc_list = 1 
let g:syntastic_check_on_open = 1 
let g:syntastic_check_on_wq = 0 
" Syntastic



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
colorscheme slate
let g:airline_theme = 'stylus'

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
