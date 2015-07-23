"set t_Co=256
syntax enable
set number
"colorscheme monokai 
"colorscheme hybrid
colorscheme jellybeans
"colorscheme solarized
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab
set relativenumber
set autoindent

" Always show tabs
set showtabline=2

"vundle setup
set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

"insert plugins here

" CtrlP
Plugin 'kien/ctrlp.vim'

" NERD Tree
Plugin 'scrooloose/nerdtree'

" Surround.vim
Plugin 'tpope/vim-surround'

" commentary.vim
Plugin 'tpope/vim-commentary'

" vim-colorschemes
Plugin 'flazz/vim-colorschemes'

" Airline 
Plugin 'bling/vim-airline'

" tagbar
Plugin 'majutsushi/tagbar'

" Syntastic
Plugin 'scrooloose/syntastic'

" YouCompleteMe
" See github repo page to finish installation
Plugin 'Valloric/YouCompleteMe'

" vim-fugitive
Plugin 'tpope/vim-fugitive'

" delimitMate
Plugin 'Raimondi/delimitMate'

" Tern for Vim
Plugin 'marijnh/tern_for_vim'

" EasyMotion
Plugin 'easymotion/vim-easymotion'

" Haml
Plugin 'tpope/vim-haml'

"end plugins
filetype plugin indent on

" Syntastic config
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_html_tidy_ignore_errors = ['trimming empty <']

" End Syntastic config

" Change font size of MacVim
if has("gui_macvim") || has("gui_vimr")
   set guifont=Monaco:h12
endif
