"vundle setup
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#rc()

"insert plugins here
Plugin 'gmarik/Vundle.vim'

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

" EasyMotion
Plugin 'easymotion/vim-easymotion'

" Haml
Plugin 'tpope/vim-haml'

" Ag
Plugin 'rking/ag.vim'

" Tabular
Plugin 'godlygeek/tabular'

" repeat.vim
Plugin 'tpope/vim-repeat'

"end plugins
call vundle#end()
filetype plugin indent on
"end vundle setup

"set t_Co=256
syntax enable
set number
"colorscheme monokai 
"colorscheme hybrid
colorscheme jellybeans
"colorscheme solarized
set tabstop=4 softtabstop=4 expandtab shiftwidth=4 "smarttab
" set tabstop=4 shiftwidth=4 expandtab
set relativenumber
set autoindent
let mapleader = ","
set foldmethod=indent
nnoremap <Space> za

" move swap files to a specific location
set backupdir=~/.vim/backup//
set directory=~/.vim/swap//
set undodir=~/.vim/undo//

" Always show tabs
set showtabline=2

" Syntastic config
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_html_tidy_ignore_errors = ["trimming empty <", "'<' + '/' + letter not allowed here", "missing </script>"]
" End Syntastic config

" Airline config
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
set laststatus=2

if !exists('g:airline_symbols')
      let g:airline_symbols = {}
endif
" End Airline config
"
" Change font and size of MacVim
if has("gui_macvim") || has("gui_vimr")
   set guifont=InputMono-Regular:h12
endif
