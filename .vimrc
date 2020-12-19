set nocompatible
set number

set mouse=a
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-scripts/vim-auto-save'
Plugin 'rust-lang/rust.vim'
"Plugin 'vim-syntastic/syntastic'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" " To ignore plugin indent changes, instead use:
" "filetype plugin on
" "
" " Brief help
" " :PluginList       - lists configured plugins
" " :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
" " :PluginSearch foo - searches for foo; append `!` to refresh local cache
" " :PluginClean      - confirms removal of unused plugins; append `!` to
" auto-approve removal
" "
" " see :h vundle for more details or wiki for FAQ
" " Put your non-Plugin stuff after this line


let s:vim_reload = 1
call plug#begin('~/.vim/bundle')
" Let Vundle manage Vundle
Plug 'gmarik/vundle'
Plug 'nickburlett/vim-colors-stylus'
Plug 'bling/vim-airline'
Plug 'scrooloose/nerdcommenter'
Plug 'dracula/vim', { 'as': 'dracula' }


if s:vim_reload
    " reloading of scripts
    Plug 'xolox/vim-reload'
    Plug 'xolox/vim-misc'
endif


" All of your Plugins must be added before the following line
call plug#end()            " required



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

" NERDCommter
map  <D-/>      <plug>NERDCommenterToggle<CR>
imap <D-/>      <Esc><plug>NERDCommenterToggle<CR>i
map  <leader>/  <plug>NERDCommenterToggle<CR>

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
